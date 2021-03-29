# Load a packages (like magrittr or dplyr) that defines the function
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%
#The pipe operator %>% was introduced to "decrease development time and to improve readability and maintainability of code."


mtcars[,c(1:7, 10, 11)]
mtcars.pca <- prcomp(mtcars[,c(1:7, 10, 11)],center = TRUE, scale. = TRUE)
