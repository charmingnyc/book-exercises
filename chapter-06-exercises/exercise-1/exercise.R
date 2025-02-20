# Exercise 1: calling built-in functions

# Create a variable `my_name` that contains your name
my_name <- "Name"

# Create a variable `name_length` that holds how many letters (including spaces)
# are in your name (use the `nchar()` function)
name_length <- nchar(my_name)

# Print the number of letters in your name
print(name_length)

# Create a variable `now_doing` that is your name followed by "is programming!"
# (use the `paste()` function)

now_doing <- paste(my_name, sep = " ", "is programming!", collapse = NULL)

# Make the `now_doing` variable upper case

print(toupper(now_doing))
### Bonus

# Pick two of your favorite numbers (between 1 and 100) and assign them to
# variables `fav_1` and `fav_2`
fav_1 <- 14
fav_2 <- 33

# Divide each number by the square root of 201 and save the new value in the
# original variable
fav_1 <- fav_1 / sqrt(201)
fav_2 <- fav_2 / sqrt(201)

# Create a variable `raw_sum` that is the sum of the two variables. Use the
# `sum()` function for practice.
raw_sum <- sum(fav_1, fav_2)

# Create a variable `round_sum` that is the `raw_sum` rounded to 1 decimal place
# Use the `round()` function.
round_sum <- round(raw_sum, digits = 1)

# Create two new variables `round_1` and `round_2` that are your `fav_1` and
# `fav_2` variables rounded to 1 decimal places


# Create a variable `sum_round` that is the sum of the rounded values


# Which is bigger, `round_sum` or `sum_round`? (use the `max()` function!)
