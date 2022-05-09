i <- 0
# Repeat loop like that would print
# the 11 value as the print statement
# is above the if condition
repeat {
  print(i)
  if (i > 10) {
    print("Final has been reached!")
    break
  }
  i <- i + 1
}

# to print up to 10 only, either
# user the "->" sign with above code
# or do this

i <- 0

repeat {
  if (i > 10) {
    break
  }
  print(i)
  i <- i + 1
}

for (i in 1:10) {
  if (i %% 2 == 1) {
    print(i)
  } else {
    next
  }
}

# reminder for functions

my_func <- function(a, b, c) {
  z <- (a * b) + c
  return(z)
}

my_func(10, 20, 5)

formals(my_func)


my_func1 <- function(a, b, c) {
  u <- a**(b / c)
  return(u)
}

# returning multiple statement with function, you have to use the list function



my_fun3 <- function(a, b, c, d) {
  x <- (a * b) + c
  z <- (x * d) / a
  return(list(x, z))
}
my_fun3(10, 20, 30, 40)


# you can also assign names to your results ->

my_func4 <- function(a = 10, b = 20, c = 30, d = 40) {
  x <- (a * b) / c
  z <- (x * d) / a
  results <- list("DataSet1" = x, "DataSet2" = z)
  return(results)
}

my_func4(d = 20)

# lambda function in R

lmbfunc <- function(a, b) a + b

lmbfunc(10, 20)

lmbfunc1 <- function(x) x^3
lmbfunc1(2)

# sequence of numbers
# You can do all the arithmetic ops on vectors and lists and sequences
x <- 1:10

x <- 1:10 * 10:1

x <- 10

z <- 1:x - 2

x <- 1:(10 - 1)

# using the seq() function to create sequences
# using complex sequencing
z <- 10
x <- seq(z, 100)
# simple sequencing
x <- seq(10) # simple
x <- seq(10) - 1 # with arithmetic


# quick matrix reminder

mat_a1 <- matrix(1:9, c(3, 3), byrow = TRUE)

sum_col <- colSums(mat_a1)
sum_row <- rowSums(mat_a1)

mean_col <- colMeans(mat_a1)
mean_row <- rowMeans(mat_a1)

final_details <- list(
  "Column Sum" = sum_col,
  "Row Sum" = sum_row,
  "Column Mean" = mean_col,
  "Row Mean" = mean_row
)

# you can call individual items inside this list
final_details$`Column Sum`

#using the apply function to add arithmetic
app_var_rows <- apply(mat_a1, 1, sum)
app_var_cols <- apply(mat_a1, 2, sum)


# writing the list to excel file
data_frame <- openxlsx::write.xlsx(as.data.frame(final_details), "Final Details.xlsx", asTable = TRUE)


