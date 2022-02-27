# Exercise 1: creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4
# games of the season (google "Seahawks" for the scores!)
sea_scores <- c(14, 18, 35, 6)

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each of the first 4 games of the season
opp_scores <- c(27, 42, 3, 27)


# Combine your two vectors into a dataframe called `games`
games <- data.frame(sea_scores, opp_scores)

# Create a new column "diff" that is the difference in points between the teams
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
diff <- sea_scores - opp_scores

# Create a new column "won" which is TRUE if the Seahawks won the game
games$won <- ifelse(diff < 0, diff > 0, TRUE)

# Create a vector of the opponent names corresponding to the games played
opp_name <- c("Chiefs", "Rams", "Raiders", "Bills")

# Assign your dataframe rownames of their opponents
rownames(games) <- opp_name

# View your data frame to see how it has changed!
print(games)
