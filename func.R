# Create a function to multiply two numbers
multiply <- function(x, y) {
  result <- x * y
  return(result)
}

# Copy the ggplot2 function from the chat

# Create a ggplot2 function to create a scatter plot
library(ggplot2)
create_scatter_plot <- function(data, x_var, y_var) {
  plot <- ggplot(data, aes_string(x = x_var, y = y_var)) +
    geom_point() +
    theme_minimal() +
    labs(title = paste("Scatter Plot of", x_var, "vs", y_var))

  return(plot)
}

# New function to add two numbers
add <- function(a, b) {
  result <- a + b
  return(result)
}

# Summary of this repository:
# This repository contains two functions: `multiply` and `add`. The `multiply`
# function takes two numbers as input and returns their product, while the `add`
# function takes two numbers and returns their sum. Additionally, there is a
# `create_scatter_plot` function that uses the ggplot2 package to create a
# scatter plot from a given dataset, specifying the x and y variables.

# where did the chat go? I thought I had it open in another tab, but now I can't
# find it. I was using it to generate the ggplot2 function. I guess I'll have to
# recreate it from memory.

# List the files that copilot currently has access to
