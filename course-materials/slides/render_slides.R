# Find all .Rmd files in the slides subdirectory
slides_rmd <- dir("course-materials/slides",
                  pattern = "*.Rmd",
                  recursive = TRUE,
                  full.names = TRUE)

# Render each to docs/course-materials/slides
for (s in slides_rmd[-1]) {
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
    # Render file
    rmarkdown::render(s, envir = new.env())
    # Move outputs
    for (o in c("libs", "-slides_files", "-slides.html")) {
      o_path <- dir(dirname(s), full.names = TRUE, pattern = o)
      file.rename(o_path, file.path("docs", o_path))
    }
  }
}
