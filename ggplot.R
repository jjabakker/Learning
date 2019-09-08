library(dplyr)
library(tidyverse) 

# Show the data for a complete overview
View(mpg)
?mpg

# Create a simple dot plot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# You can override the color with a fixed value
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

# You can also have an attribute determine the colouring. Note that color is now inside the aes funcion
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = year))

# with alpha you can control the shading of the dots

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class), color = "blue")

# with size you can control the size of the dots 

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = hwy))

# with shape you can control the shape of the dots 

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

# You can split the graph in 'facets'
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# This is a different format
ggplot(data = mpg, mapping = aes (x = hwy, y = cyl)) +
  geom_point()

# Now for the variations 
ggplot(data = mpg)  +
  geom_point(mapping = aes (x = displ, y = hwy))

ggplot(data = mpg)  +
  geom_smooth(mapping = aes (x = displ, y = hwy))

# You can combine the two above graphs easily....

ggplot(data = mpg)  +
  geom_point(mapping = aes (x = displ, y = hwy)) +
  geom_smooth(mapping = aes (x = displ, y = hwy))

# Same effect as before, but with parameters more conveniently reorganised
ggplot(data = mpg, mapping = aes (x = displ, y = hwy))  +
  geom_point() +
  geom_smooth()

# And add color effects as before

ggplot(data = mpg, mapping = aes (x = displ, y = hwy))  +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

ggplot(data = mpg, mapping = aes (x = displ, y = hwy))  +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(color = "Yellow")

# You can select data also

ggplot(data = mpg, mapping = aes (x = displ, y = hwy))  +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(
    data = filter(mpg, class == "subcompact"))

ggplot(data = mpg, mapping = aes (x = displ, y = hwy))  +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(
    data = filter(mpg, class == "subcompact"),
    se = FALSE)

ggplot(data = mpg, mapping = aes (x = displ, y = hwy))  +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(
    data = filter(mpg, class == "pickup"))

ggplot(data = mpg)  +
  geom_smooth(mapping = aes (x = displ, y = hwy,  class = drv))

ggplot(data = mpg)  +
  geom_smooth(mapping = aes (x = displ, y = hwy,  class = trans))


# Create a simple dot plot
p <- ggplot(data = mpg)
p <- p + geom_point(mapping = aes(x = displ, y = hwy, color = cyl))
p <- p + labs (color = "Cylinder cont.")
p <- p + labs(x = "New x label")
p <- p + labs(y = "New y label")
p <- p + labs(title = "New Plot", subtitle = "New subtitle")
p <- p + labs(caption = "(based on data from ...)")
p
