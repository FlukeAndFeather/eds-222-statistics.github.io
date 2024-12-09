`%>%` <- dplyr::`%>%`

# Find all .Rmd files in the slides subdirectory
slides_rmd <- dir("course-materials/slides",
                  pattern = "*.Rmd",
                  recursive = TRUE,
                  full.names = TRUE)

# Render each to docs/course-materials/slides
for (s in slides_rmd) {
  rmarkdown::render(s,
                    envir = new.env(),
                    output_dir = here::here("docs", dirname(s)))
}
