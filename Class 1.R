# Vectors

c(1, 2, 3, 4, 5)
1:5
c(c(4,5,6),1:3)
vec <- c(a=3, b=4, c=5)
vec
vec[2]
vec['c']
vec[-2]
vec[['c']]
(vec1 = vec['a'])
(vec2 = vec[['a']])
vec2 + 7
vec1 + 7
vec ^ 2
vec > 3
vec[vec>3]

# Lists

(l1 <- list(num1 = 1, char1 = "Hi"))
(l2 <- list(lg1 = T, int1 = 3L))
l1$num1
l1[1]
l1$char1
l1[2]
l1
c1 = c (l1, l2)
nl = list (l1,l2)

# Matrices

(mat1 <- matrix(1:9, ncol = 3))
mat1[,1]      # Get the first column
mat1[1,]      # Get the first row
mat1[2,3]     # Get an element
mat1[c(1,3),] # Get the first and third row 
mat1[,c(1,3)] # Get the first and third column
