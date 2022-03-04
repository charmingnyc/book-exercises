# Exercise 1: accessing a relational database

# Install and load the `dplyr`, `DBI`, and `RSQLite` packages for accessing
# databases
library("dplyr")
library("DBI")
library("RSQLite")

# Create a connection to the `Chinook_Sqlite.sqlite` file in the `data` folder
# Be sure to set your working directory!
setwd("~/Code/R/book-exercises/chapter-13-exercises/exercise-1")
db_connection <- dbConnect(SQLite(), dbname = "data/Chinook_Sqlite.sqlite")


# Use the `dbListTables()` function (passing in the connection) to get a list
# of tables in the database.
dbListTables(db_connection)

# Use the `tbl()`function to create a reference to the table of music genres.
# Print out the the table to confirm that you've accessed it.
some_table <- tbl(db_connection, "Genre")
print(some_table)

# Try to use `View()` to see the contents of the table. What happened?
# genre_df <- collect(some_table) # needed help / review
View(some_table) # needed help / review.. what;s happinging here

# db_query <- some_table %>% WRONG 
#  filter("GenreId" == 8)
# show_query(db_query)

# Use the `collect()` function to actually load the genre table into memory
# as a data frame. View that data frame.
genre_df <- collect(some_table)
View(genre_df)

# results <- collect(db_query)
# print(results)

# Use dplyr's `count()` function to see how many rows are in the genre table
count(some_table)


# Use the `tbl()` function to create a reference the table with track data.
# Print out the the table to confirm that you've accessed it.


# Use dplyr functions to query for a list of artists in descending order by
# popularity in the database (e.g., the artist with the most tracks at the top)
# - Start by filting for rows that have an artist listed (use `is.na()`), then
#   group rows by the artist and count them. Finally, arrange the results.
# - Use pipes to do this all as one statement without collecting the data into
#   memory!


# Use dplyr functions to query for the most popular _genre_ in the library.
# You will need to count the number of occurrences of each genre, and join the
# two tables together in order to also access the genre name.
# Collect the resulting data into memory in order to access the specific row of
# interest


# Bonus: Query for a list of the most popular artist for each genre in the
# library (a "representative" artist for each).
# Consider using multiple grouping operations. Note that you can only filter
# for a `max()` value if you've collected the data into memory.


# Remember to disconnect from the database once you are done with it!
dbDisconnect(db_connection)