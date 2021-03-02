# Importing the dataset: Write code to import the dataset Boston_housing_data.csv using base R code and display the result.
df <- read.csv("boston_housing_data.csv")
df

# Displaying the number of rows and columns:
# Write code to display the number of rows and columns in the dataframe stored as df.
dim(df)

#Displaying the column names: Write code to display the column names in the dataframe stored as df.
colnames(df)

# Displaying mean, count, min, and max: Write code to display the mean, count, min, and max of all the numeric data using a single line of code in the dataframe stored as df.
summary(df)

#Displaying the variable type: Write code to display the structure, including each column name, its type, and its first couple of values, in the dataframe stored as df.
str(df)

# Displaying unique values: Write code to display unique values in the locationzone column in the dataframe stored as df.
unique(df$'locationzone')

# Write code to display the unique values in the locationzone column and the number of times each value appears in the dataframe stored as df.
df %>% count(locationzone) %>% arrange(desc(n))

# The base R function to read in a CSV file is read.csv(). You will also see read_csv() used, but that function belongs to the Tidyverse library. Using head() with default arguments displays the first 6 rows of data. To display different row amounts, you can add an integer to the head() function. For example head(df,10) to display the first 10 rows.
df <- read.csv("boston_housing_data_clean.csv")
head(df)

# Write code that displays any duplicate rows in the dataframe stored as df.
df[duplicated(df),]

# Write code that displays how many missing values are in each column in the dataframe stored as df.
sapply(df, function(x) sum (is.na(x)))
