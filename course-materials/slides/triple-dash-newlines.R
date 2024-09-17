# Input: the week
week <- 8

# Find and read slides Rmd
slides_path <- file.path("course-materials",
                         "slides",
                         sprintf("week%d", week),
                         sprintf("week%d-slides.Rmd", week))
slides_lines <- readLines(slides_path)

# Locate non-YAML triple dashes
triple_dash_idx <- which(slides_lines == "---")
# remove 2 for YAML
triple_dash_idx <- triple_dash_idx[-(1:2)]
# Keep track of progress
i <- 1
while (length(triple_dash_idx) > i) {
  # have to keep updating triple_dash_idx in case we insert blank lines
  triple_dash_idx <- which(slides_lines == "---")
  triple_dash_idx <- triple_dash_idx[-(1:2)]
  tdi <- triple_dash_idx[i]
  # Make replacements if necessary
  if (slides_lines[tdi - 1] != "") {
    slides_lines <- append(slides_lines, "", after = tdi - 1)
    tdi <- tdi + 1
  }
  if (slides_lines[tdi + 1] != "")
    slides_lines <- append(slides_lines, "", after = tdi)
  i <- i + 1
}

# Write out file
writeLines(slides_lines, slides_path)

