mat_a <- matrix(
  c(2, 3, 4, 0, 1, 2, -1, -2, 5),
  nrow = 3, ncol = 3, byrow = TRUE
)

# The rbind function combine the matrixes
mat_b <- rbind(mat_a, c(10, 11, 12))


# combining 2 matrixs
mat_a <- matrix(
  c(2, 3, 4, 0, 1, 2, -1, -2, 5),
  nrow = 3, ncol = 3, byrow = TRUE
)

mat_b <- matrix(
  c(11, 12, 13),
  nrow = 1, ncol = 3,
  byrow = TRUE
)

mat_c <- rbind(mat_a, mat_b) # rebind, creates rows, cbind = columns

# cbind functions
mat_a <- matrix(
  c(2, 3, 4, 0, 1, 2, -1, -2, 5),
  nrow = 3, ncol = 3, byrow = TRUE
)

mat_b <- rbind(mat_a, c(10, 11, 12))
mat_b <- cbind(mat_b, c(10, 11, 12, 13))

mat_d <- matrix(
  c(10, 15, 16, 19, 20, 5, -1, -10, -90),
  nrow = 3, ncol = 3, byrow = TRUE
)

mat_e <- matrix(
  c(0, 5, 3, 9, 7, 4, 50, -9, 60),
  nrow = 3, ncol = 3, byrow = TRUE
)

mat_f <- rbind(mat_d, mat_e)
mat_g <- cbind(mat_d, mat_e)

rownames(mat_g) <- c(1, 2, 3)
colnames(mat_g) <- c("A", "B", "C", "D", "E", "F")
View(mat_g)

mat_g <- as.data.frame(mat_g)
class(mat_g)
openxlsx::write.xlsx(
  mat_g, "Matrix.xlsx",
  asTable = T
)
mat_test <- openxlsx::read.xlsx(
  "c:\\users\\swmd\\documents\\pyproject\\Matrix.xlsx",
  skipEmptyRows = T, skipEmptyCols = T
)
View(mat_test)

# Matrix operations
mat_a <- matrix(
  c(1, 2, 3, 4, 5, 6, 8, 9, 1),
  ncol = 3, nrow = 3, byrow = T
)

mat_b <- matrix(
  c(3, 1, 2, 4, 2, 1, 5, 1, 2),
  byrow = T, nrow = 3, ncol = 3
)

# addition
mat_c <- mat_a + mat_b
mat_c

# subtraction
mat_c <- mat_a - mat_b
mat_c

# multiplications
mat_c <- mat_a * mat_b # Method 1 - element by element
mat_c <- mat_a %*% mat_b # method 2 - row by column
# first element in row mat_a * first element in columns mat_b
# + second element row * 2nd element columns
# from the example above first value = (1*3)+(2*4)+(3*5)

mat_z <- mat_a %/% mat_b
mat_z
mat_c
t(mat_c)

solve(mat_c) # Needs studying
