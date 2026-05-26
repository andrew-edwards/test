x <- rnorm(100)
plot(x,
     col = "red",
     main = "Hello")

library(ggplot2)
# Make a ggplot version of the above plot function, but not a histogram, just a
# scatter plot of the points. The x-axis should be the index of the point (1 to
# 100) and the y-axis should be the value of the point.
# Make the red circles open not closed circles. You can do this by setting the
# shape argument in geom_point to 1.
df <- data.frame(index = 1:100, value = x)
ggplot(df, aes(x = index, y = value)) +
  geom_point(shape = 1, color = "red") +
  ggtitle("Hello")
# make circle open by setting shape to 1
# no background color by default, so no need to set it to NA













