install.packages("plotly")
library(plotly)
data("mtcars")

plt <- plot_ly(data = mtcars, x = ~wt, y = ~mpg, z = ~hp, marker = list(color = ~cyl), mode = "markers")
plt <- plt %>% add_markers() %>% layout(scene = list(xaxis = list(title = "Weight by Thousands of Pounds"), yaxis = list(title = "Miles Per Gallon"), zaxis = list(title = "Gross horsepower")))
plt