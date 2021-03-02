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

# Write code that displays the mean value of the medv column per district on March 27, 2016. To do this, limit the dataset to observations that were appraised on March 27, 2016, and create a datasheet that aggregates all the data by the locationdistrict column and displays the mean of medv rounded off to one decimal place.
df <- read.csv("boston_housing_data_clean.csv")
df2 <- df %>% filter(date_appraised == '2016-03-27')
tbl <- df2 %>% group_by(locationdistrict) %>% summarise(mean=mean(medv, na.rm = TRUE), .groups = 'drop')
tbl

# Write code to import the dataset iris.csv using base R code and display the first 6 rows of data.
df <- read.csv('iris.csv')

# Apply the summary() function on the dataframe stored as df.
summary(df)

# Apply the str() function on the dataframe stored as df.
# The str() function is an easy way to view the makeup of many R objects, including how to access stored information. For a dataframe, this will show each column's name and data type.
str(df)

# The str() function is an easy way to view the makeup of many R objects, including how to access stored information. For a dataframe, this will show each column's name and data type.
df <- read.csv('boston_housing_data.csv')
head(df, 5)

# Write code to identify how many missing values are in each column in the dataframe stored as df.
sapply(df,function(x) sum(is.na(x)))

# Write code to calculate the standard deviation of every numeric column in the dataset Boston_housing_data.csv.
df <- read.csv('/home/ucertify/Boston_housing_data.csv')
sapply(df,function(x) sd(x, na.rm = TRUE))

# Write code that displays all duplicated rows in the dataframe stored as df.
df[duplicated(df),]

# Write code to drop all the duplicates in the dataframe stored as df.
df <- df[duplicated(df) == F,]
df

# 
