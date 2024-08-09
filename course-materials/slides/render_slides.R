# Find all .Rmd files in the slides subdirectory
slides_rmd <- dir("course-materials/slides",
                  pattern = "*.Rmd",
                  recursive = TRUE,
                  full.names = TRUE)

# Remove previous rendered versions
unlink("docs/course-materials/slides", recursive = TRUE)

# Render each to docs/course-materials/slides
for (s in slides_rmd) {
  # The output directory is: docs/ + Rmd filepath - basename
  s_out <- file.path("docs", dirname(s))
  rmarkdown::render(s,
                    output_dir = s_out,
                    output_options = list(self_contained = TRUE))
}
