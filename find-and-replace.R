# An R function to open each file in the current directory in turn, search for the term
# given by the argument `find`, and replace it with the argument `replace_with`,
# and save the file. But do not do this if the argument `find` is part of a
# longer word in the file. Use defaults of `find = xmin` and `replace_with =
# x_min`.
# For example replace `xmin = 7` with `x_min = 7`, but do not change
# `xmin_and_fit = 7`.
find_and_replace <- function(dir = ".", find = "xmin", replace_with = "x_min") {
  # Get a list of all files in the directory
  files <- list.files(dir, full.names = TRUE)

  # Loop through each file
  for (file in files) {
    # Read the file content
    content <- readLines(file)

    # Replace the term only if it is not part of a longer word
    modified_content <- gsub(paste0("\\b", find, "\\b"), replace_with, content)

    # Write the modified content back to the file
    writeLines(modified_content, file)
  }
}



