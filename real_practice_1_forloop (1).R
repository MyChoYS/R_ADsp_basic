# Analysis of economic information 
# Week 10
# practice at Nov 5

# question 0
# Print your name and student number BY USING paste() and print() function 

# question 1
# Print integer from 1 to 10 using for loop

for ( i in 1:10){
  print(i)
}

# question 2
#install.packages("gapminder")
library(gapminder)
data("gapminder")
str(gapminder)
# print the countries' name using for loop
countries <- unique(gapminder$country)
for (i in countries){
 
}



# question 3
# print the continents' name using for loop
continents <- unique(gapminder$continent)
for (){
  
}

# question 4
# print the continents' name using for loop
years <- unique(gapminder$year)
for (){
}

# question 5 
# To print out Korea's gdp per capita over years using for loop, complete the following code.
# Hint: i represents row index and use paste() function
# The answer should be like this:
#[1] "The gdp per capita in 1952 is 1030.592226"
#[1] "The gdp per capita in 1957 is 1487.593537"
# ...
#[1] "The gdp per capita in 2002 is 19233.98818"
#[1] "The gdp per capita in 2007 is 23348.13973"
Korea <- gapminder[gapminder$country == "Korea, Rep.",]

for (i in 1:12){
  #print(i)
  print(paste("The gdp per capita in",  , "is",  ))
}


# question 6. Subset China's data and store it as China. Then, print out its population for every year in the data,
# using for loop
# Hint: i represents row index and use paste() function
# The answer should be like this:
#[1] "The Population of China in 1952 is 556263527"
#...
#[1] "The Population of China in 2002 is 1280400000"
#[1] "The Population of China in 2007 is 1318683096"

China <- gapminder[gapminder$country == "China",]

for (i in 1:12){

}

# question 7
# Subset Asian countries in 2007 and store it as Asia.
Asia <- gapminder[gapminder$continent == "Asia" & gapminder$year == 2007,]
# Then, first, print out the name of country,
# and print out "This country's gdp per capita is over the mean!",
# when the country's gdp per capita is over the mean of Asian countries' gdp per capita in 2007,
# and print out "This country's gdp per capita is below the mean.", otherwise.
# Do this for every Asian countries using for loop.


for (i in 1:33){
  
  if ()){
    print(paste(  , "This country's gdp per capita is over the mean!"))
  } else {
    print(paste(  , "This country's gdp per capita is below the mean."))
  }
}

# Let's use mtcars data again. This data may be already installed in your R.
# If not, do install.packages("datasets") and 
# library(datasets)
data(mtcars)
??mtcars
str(mtcars)


# question 8. Print the name of every listed car in mtcars data using for loop.
mtcars$name <- rownames(mtcars)

for (){
  print(paste("The name of car is", ))
}


# question 9. For every car, check whether the car's transmission is automiatic or not by looking at am column.
# Print out, for example, "Masda RX4 is automatic", if its am is 0, 
# otherwise print out "Masda RX4 is manual, if its am is 1. 
# Do it for every car, using for loop, paste() function, and if else statement.







