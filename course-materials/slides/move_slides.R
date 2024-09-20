# If rendered slides exist in the temporary folder...
if (dir.exists("tempslides")) {
  # Move them to docs/
  unlink("docs/course-materials/slides", recursive = TRUE)
  file.rename("tempslides/course-materials/slides/", "docs/course-materials/slides/")
  # Delete temporary folder
  unlink("tempslides", recursive = TRUE)
}
