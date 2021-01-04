# Analysis of economic information 
# Week 9
# practice at Oct 29

# question 0
# Print your name and student number BY USING paste() and print() function 



# question 1
library(gapminder)
data(gapminder)
str(gapminder)
# Subset gapminder data of year 1952 and store it as new data frame "year_1952"



table(gapminder$year)
# question 2
# Subset gapminder data of year 2007 and store it as new data frame "year_2007"



# question 3
# what's the mean and median of gap per capita at 1952? 


# question 4
# what's the mean and median of gap per capita at 2007? 


# question 5
# Subset countries from year_1952 whose gpd per capita is higher that the mean value of gdp per capita in 1952,
# and store it as a new data frame as "richCountries_1952"



# question 6
# Subset countries from year_2007 whose gpd per capita is higher that the mean value of gdp per capita in 2007,
# and store it as a new data frame as "richCountries_2007"




# question 7
# I want to print "My country was rich enough!", 
# if the gdp per capita of my country is greater than the mean of world gdp per capita, 
#  "My country was not rich", otherwise
# Use only data for 1952
# Hint: use if statement
myCountry_1952 <- year_1952[year_1952$country == "Korea, Rep.",]

if () {
  print()
} else {
  print()
}

# question 7
# I want to print "My country achieved the economic development!", 
# if the gdp per capita of my country is greater than the mean of world gdp per capita, 
#  "My country did not achieve the economic development", otherwise
# Use only data for 2007
# Hint: use if statement
myCountry_2007 <- year_2007[,] # fill the rest of code



# question 8 
year_1952$GDP <- year_1952$pop * year_1952$gdpPercap
hist(year_1952$GDP, breaks = 100)
summary(year_1952$GDP)
# I want to print "My country was strong!", 
# if its is greater than the mean of wordl GDP in 1952, 
#  "My country was not a strong country", otherwise
# Use only data for year_1952
# Hint: use if statement
myCountry_1952 <- year_1952[year_1952$country == "Korea, Rep.",]

if () {
  print()
} else {
  print()
}
  

# question 9 
year_2007$GDP <- year_2007$pop * year_2007$gdpPercap
hist(year_2007$GDP, breaks = 100)
summary(year_2007$GDP)
# I want to print "My country became strong!", 
# if its GDP is greater than 2.760e+11 in 2007, 
# "my country was not that strong, but not that week", if its GDP is between 1.744e+10 and 2.760e+11
#  "My country was weak in 2007", otherwise
# Use only data for year_2007
# Hint: use else if statement



