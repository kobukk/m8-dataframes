# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function


grants <- read.csv('data/gates_money.csv', stringsAsFactors = FALSE)

# Use the View function to look at your data

View(grants)
# Create a variable `spending` as the `total_amount` column of the dataset

spending <- grants$total_amount
spending

# Confirm that your `spending` variable is a vector using the `is.vector` function

is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function

org <- as.vector(grants$organization)
is.vector(org)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?

mean.value <- mean(spending)
mean.value
# What was the dollar amount of the largest grant?

max.dollar.amount <- max(spending)
# What was the dollar amount of the smallest grant?

min.dollar.amount <- min(spending)

# Which organization received the largest grant?

largest.grant.org <- org[spending == max.dollar.amount]

# Which organization received the smallest grant?

smallest.grant.org <- org[spending == min.dollar.amount]
# How many grants were awarded in 2010?

total.grants <- length(spending[grants$start_year == 2010])
