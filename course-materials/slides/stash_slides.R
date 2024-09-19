docs_slides <- file.path("docs", "course-materials", "slides")
if (file.exists(docs_slides)) {
  file.rename(docs_slides, "temp-slides")
}
