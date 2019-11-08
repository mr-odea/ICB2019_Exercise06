# Exercise 6
# Part 1: Replicating the functionality of the unix "head" command

# here we create a custom function which performs the head functionality

headReplicated <- function(file_to_read, number_of_lines){ #firstly, we define the function and it's inputs: a string with the file name, and the number of lines one wishes returned 
  dataset <- read.csv(file_to_read) #this loads the desired csv file into the variable "dataset"
  dataset[c(1:number_of_lines),] #this returns rows 1 through the number of lines one wishes returned from the dataset just imported
}

headReplicated("iris.csv", 10) #testing this function; we load the iris.csv file and return the first 10 lines; 

## Part 2: 
# load the iris.csv dataset
iris <-  read.csv("iris.csv")

# A: print the last 2 rows in the last two columns to the R terminal; 
tail(iris[,c(4,5)],2)

# B: get the number of observations for each species in the dataset 
sum(iris=="setosa")
#output: [1] 50
sum(iris=="versicolor")
#output: [1] 50
sum(iris=="virginica")

# C: get rows with Sepal.Width > 3.5

big_width_sepals <- subset(iris, Sepal.Width>3.5)
big_width_sepals

# D: write the data for the species setosa into setosa.csv
setosa <- subset(iris, Species == "setosa")
write.csv(setosa, "setosa.csv")

# E: Calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
# subset virginica rows
virginica <-iris[iris[,5]=="virginica",]

# Calculate mean Petal Length of virginica
mean(virginica[,3])
# mean is 5.552

# collect max Petal Length of virginica
max(virginica[,3])
# max is 6.9

# collect min Petal Length of virginica
min(virginica[,3])
# min is 4.5