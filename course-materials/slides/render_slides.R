# Find all .Rmd files in the slides subdirectory
slides_rmd <- dir("course-materials/slides",
                  pattern = "*.Rmd",
                  recursive = TRUE,
                  full.names = TRUE)

# Render each to docs/course-materials/slides
for (s in slides_rmd) {
  # Is there an existing output, and is it more recent than the source file?
  s_html <- file.path("docs",
                      dirname(s),
                      gsub("Rmd", "html", basename(s), fixed = TRUE))
  if (!file.exists(s_html) ||
      file.info(s_html)$mtime < file.info(s)$mtime) {
    # Clear old output
    s_dir <- file.path("docs", dirname(s))
    unlink(s_dir, recursive = TRUE)
    dir.create(s_dir, recursive = TRUE)
    # Render and move file to docs/
    rmarkdown::render(s, envir = new.env())
    out_html <- dir(dirname(s), pattern = "-slides.html", full.names = TRUE)
    file.rename(out_html, file.path("docs", out_html))
  }
}
