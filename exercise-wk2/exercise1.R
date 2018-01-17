## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# Because it try to sum a string and an integer, paste is ok but sum is not

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# because it doesn't load the library after install the package

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# wrong format of paste, it should be paste(my.line, initial, sep = " - ")


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector <- c(1:5)
typeof(vector)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  N <- abs(length(vector1) - length(vector2))
  return(paste("The difference in lengths is", N))
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(vector, c(1:100))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescibeDifference <- function(vector1, vector2) {
  N <- abs(length(vector1) - length(vector2))
  if (length(vector1) > length(vector2)) {
    return(paste("Your first vector is longer by", N,"element"))
  } else {
    return(paste("your second vector is longer by",N,"element"))
  }
}

# Pass two vectors to your `DescribeDifference` function
DescibeDifference(vector, c(1:100))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1,v2,v3) {
  c(v1,v2,v3)
}
# Send 3 vectors to your function to test it.
CombineVectors(vector,c(1:100),c(2:10))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


