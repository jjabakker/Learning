# Routine to somply plot a file

library(ggplot2)

myfun <- function(x) {
  1/ (1 + exp(-x + 10))
}


myfun1 <- function(x) {
  2 -1 / (1 + exp(-x + 10))
}

myfun2 <- function(x, n) {
  x^n
}

xmin = 0
xmax = 10

ggplot(data.frame(x = c(xmin, xmax)), aes(x=x)) +
  stat_function(fun=myfun, geom = "line") +
  stat_function(fun=myfun1, geom = "line") +
  stat_function(fun=myfun2, args = list(n=0.4), geom = "line") +
  stat_function(fun=myfun2, args = list(n=0.2), geom = "line") +
  stat_function(fun=myfun2, args = list(n=0.1), geom = "line")
  


xmin = 0
xmax = 0.01

ggplot(data.frame(x = c(xmin, xmax)), aes(x=x)) +
  stat_function(fun=myfun2, args = list(n=0.4), geom = "line") +
  stat_function(fun=myfun2, args = list(n=0.2), geom = "line") +
  stat_function(fun=myfun2, args = list(n=0.1), geom = "line")
