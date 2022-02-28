# Exercise 3: using the pipe operator

# Install (if needed) and load the "dplyr" library
#install.packages("dplyr")
library("dplyr")

# Install (if needed) and load the "fueleconomy" package
#install.packages('devtools')
#devtools::install_github("hadley/fueleconomy")
library("fueleconomy")
View(vehicles)

# Which 2015 Acura model has the best hwy MGH? (Use dplyr, but without method
# chaining or pipes--use temporary variables!)
# pg. 168
vehicles2015 <- filter(vehicles, year == 2015)
group <- filter(vehicles2015, make == "Acura")
best_hwy <- filter(group, hwy == max(hwy))
print(best_hwy)
#best_hwympg_2015_Acura <- select(worst_hwy, id)

  
# Which 2015 Acura model has the best hwy MPG? (Use dplyr, nesting functions)
# pg. 169

# Which 2015 Acura model has the best hwy MPG? (Use dplyr and the pipe operator)
# pg. 170


### Bonus

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times
