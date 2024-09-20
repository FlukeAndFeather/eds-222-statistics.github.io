`%>%` <- dplyr::`%>%`

# Find all .Rmd files in the slides subdirectory
slides_rmd <- dir("course-materials/slides",
                  pattern = "*.Rmd",
                  recursive = TRUE,
                  full.names = TRUE)

# Create a temporary directory to hold the slides during website rendering
unlink("tempslides", recursive = TRUE)
dir.create("tempslides")

# Render each to docs/course-materials/slides
for (s in slides_rmd) {
  # Is there an existing output, and is it more recent than the source file?
  s_html <- file.path("docs",
                      dirname(s),
                      gsub("Rmd", "html", basename(s), fixed = TRUE))
  dest_dir <- dirname(gsub("docs", "tempslides", s_html, fixed = TRUE))
  dir.create(dest_dir, recursive = TRUE)
  if (file.exists(s_html)) {
    html_modified <- rvest::read_html(s_html) %>%
      rvest::html_nodes(xpath = "//meta[@name='last_modified']") %>%
      rvest::html_attr("content")
    s_modified <- file.info(s)$mtime %>%
      as.numeric() %>%
      .POSIXct(tz = "UTC") %>%
      format("%Y%m%d%H%M%OS1")
    if (html_modified > s_modified) {
      # HTML output exists AND is more recent than Rmd source
      # Move to temporary directory
      file.copy(s_html, dest_dir, recursive = TRUE)
      # go to next source file
      next
    }
  }
  # Render file as necessary
  rmarkdown::render(s, envir = new.env())
  out_html <- dir(dirname(s), pattern = "-slides.html", full.names = TRUE)
  file.rename(out_html, file.path("tempslides", out_html))
}
