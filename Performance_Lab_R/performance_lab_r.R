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
