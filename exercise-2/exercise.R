# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
seahawks.points <- c(12, 3, 37, 27)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season

points.against <- c(10, 9, 18, 17)
# Combine your two vectors into a dataframe

seahawks.dataframe <- data.frame(seahawks.points, points.against)

# Create a new column "diff" that is the difference in points

seahawks.dataframe$diff <- (seahawks.points - points.against)

# Create a new column "won" which is TRUE if the Seahawks wom



seahawks.dataframe$won <- c( seahawks.dataframe$diff > 0  )

# Create a vector of the opponents

opponents <- c('dolphins', 'rams', '49ers', 'jets')

# Assign your dataframe rownames of their opponents

