#install.packages('nycflights13')
library(dplyr)
library(nycflights13)

# Remove the flights that were cancelled 
not_cancelled <- flights %>% filter(!is.na(dep_delay), !is.na(arr_delay))

#Get the average delay of all flights for each day
(not_cancelled %>% 
  group_by(year, month, day) %>% 
  summarise(mean = mean(dep_delay)))

ggplot(data = flights) geom_point(mapping = aes(x = year, y = dep_delay))
