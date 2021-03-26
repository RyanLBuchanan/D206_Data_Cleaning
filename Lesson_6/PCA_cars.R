mtcars[,c(1:7, 10, 11)]
mtcars.pca <- prcomp(mtcars[,c(1:7, 10, 11)],center = TRUE, scale. = TRUE)
