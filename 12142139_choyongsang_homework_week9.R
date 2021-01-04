# Analysis of economic information 
# Week 9
# homework until at midnight of Nov 5 

# question 0
# Print your name and student number BY USING paste() and print() function 
print("cho_yong sang , 12142139")


# question 1
# Print integer from 1 to 10 using while loop
condition <- 1
while (condition < 11){
  print(condition)
  condition <- condition + 1
}


# question 2
# Current speed is 70 and your car is able to reduce its speed 7 in every iteration. 
# Print the message "Slow down" while its speed is over 30. 
speed <- 70

while (speed > 30) {
  print("slow down")
  speed <- speed - 7
}

# question 3 
# Print out the name of city that is in vector cities using for loop
cities <- c("New York", "Paris", "Seoul", "Beijing", "London", "Tokyo")

for (city in cities) {
  print(city)
}

# question 4
# Print out cities' name until its length of character is 6 using for loop
# Hint: Use break statement
cities <- c("New York", "Paris", "Seoul", "Beijing", "London", "Tokyo")

for (i in 1 : length(cities)) {
  if (nchar(cities[i]) == 6){
    break
  }
  print(cities[i])
}


# question 5
# Print out prime numbers that is in vector primes using for loop
primes <- c(2,3,5,7,11,13)

for (i in 1 : length(primes)){
  print(primes[i])
}


# question 6
# Print out the number of your cyworld view in the last seven days using for loop
CyWorld <- c(16, 9, 13, 5, 2, 17, 14)

for (i in 1 : length(CyWorld)){
  print(CyWorld[i])
}


# question 7 
# Print out the number of your cyworld view in the last seven days using for loop
# and say "Yor are popular!" when the view is greater than 10,
# say "Be more visible", otherwise
# Hint: use if statement in the for loop

for (i in 1 : length(CyWorld)){
  if (CyWorld[i] > 10){
    print("You are popular")
  } else {
    print("Be more visible")
  }
}




# question 8. Print out the element of matrix ttt, like "On Row i and column j is XX" 
# using for loop over matrix ttt
# Hint: use paste() function
v <- c("O", NA, "X", NA, "O", NA, "X", "O", "X")
ttt <- matrix(v, nrow = 3)
i <- 1
j <- 1
for (i in 1 : 3){
  
  for (j in 1:3){
    print(paste("On Row", i , "and column", j, "is", ttt[i,j]))
  }
}




# Question 9 
#install.packages("gapminder")
library(gapminder)
data("gapminder")
str(gapminder)
countries_2007 <- gapminder[gapminder$year == 2007, ]
# Print out "The gdp per capita of XXX is XXX in 2007" using for loop.
# Hint: use for loop and paste() function

for (i in 1:length(countries_2007$country)){
 print(paste("The gdp per capita of",
             countries_2007$country[i] ,"is",
             countries_2007$gdpPercap[i] ,"in 2007"))
}



