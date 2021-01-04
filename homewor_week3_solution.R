# Analysis of economic information 
# Week 3 
# homework until Sep 23 
???
# question 0
# Print your name and student number by using print() function
???
???
# question 1
mainVector <- c(1:10)
mainVector <- as.numeric(mainVector)
result1 <- c(3)
# generate vector result1 by subsetting mainVector (using its index) and store it as a new vector "studentResult1"
studentResult1 <- mainVector[3]
???
???
# question 2
result2 <- c(1,2,3)
# generate vector result2 subsetting mainVector (using its index) and store it as a new vector "studentResult2"
studentResult2 <- mainVector[c(1,2,3)]
???
???
# question 3
result3 <- c(1,2,3,4,5,6)
# generate vector result3 subsetting mainVector (using its index and :) and store it as a new vector "studentResult3"
studentResult3 <- mainVector[c(1:6)]
???
???
# question 4
result4 <- c(5,2,9)
# generate vector result4 subsetting mainVector (using its index) and store it as a new vector "studentResult4"
studentResult4 <- mainVector[c(5,2,9)]
???
???
# question 5
result5 <- c(9,10)
# generate vector result5 subsetting mainVector using > or >= and store it as a new vector "studentResult5"
studentResult5 <- mainVector[mainVector>=9]
???
???
# question 6
title <- c("one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten")
names(mainVector) <- title
result6 <- c(5)
# generate vector result6 subsetting mainVector using its names and store it as a new vector "studentResult6"
studentResult6 <- mainVector["five"]
???
???
# question 7
result7 <- c(3,5,7)
# generate vector result7 subsetting mainVector using its names and store it as a new vector "studentResult7"
studentResult7 <- mainVector[c("three", "five", "seven")]
???
???
# question 8 
result8 <- c(1,2,3)
# generate vector result8 subsetting mainVector using its names and store it as a new vector "studentResult8"
studentResult8 <- mainVector[c("one", "two", "three")]
???
???
# question 9 
result9 <- c(1,2,3,5,6)
# generate vector result9 subsetting mainVector by using any methods that you like and store it as a new vector "studentResult9"
studentResult9 <- mainVector[c(1:3, 5:6)]
