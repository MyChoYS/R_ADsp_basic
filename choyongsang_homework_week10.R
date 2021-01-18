# Analysis of economic information 
# Week 10
# homework until at midnight of Nov 12

library(gapminder) # Recall that you need to call packages WHENEVER you use the package
# to make functions be ready on the memory of your computer

data(gapminder) # Let's look at the stored data in the package!
str(gapminder) # Let's check the data types and structure of data

# question 0
# Print your name and student number BY USING paste() and print() function 
print("12142139 choyongsang")


# question 1
Korea <- gapminder[gapminder$country == "Korea, Rep.",]
# To print out its gdp per capita for every year using for loop, complete the following code.
# Hint: i represents row index and use paste() function
# The answer should be like this:
#[1] "The gdp per capita in 1952 is 1030.592226"
#[1] "The gdp per capita in 1957 is 1487.593537"
# ...
#[1] "The gdp per capita in 2002 is 19233.98818"
#[1] "The gdp per capita in 2007 is 23348.13973"

for (i in 1:length(Korea$year)){
  print(paste("The gdp per capita in",Korea$year[i],"is",Korea$gdpPercap[i]))
}



# question 2
# Let's subset European countries in 2007 and store it as Europe
Europe <- gapminder[gapminder$continent == "Europe" & gapminder$year == 2007,]
# print out "The gdp per capita of XXX(the name of country) is over the mean!",
# when the country's gdp per capita is over the mean of European countries' gdp per capita in 2007,
# and print out "The gdp per capita of XXX(the name of country) is below the mean.", otherwise.
# Do this for every European countries using for loop.

for (i in 1:30){

  if (Europe$gdpPercap[i] > mean(Europe$gdpPercap)){
    print(paste("The gdp per capita of",Europe$country[i],"is over the mean!"))
  } else {
    print(paste("The gdp per capita of",Europe$country[i],"is below the mean!"))
  }
}

# question 3
data("mtcars")
??mtcars
str(mtcars)
# for your convenience, let me make a new column representing the car's name by looking at the row's name of mtcars data
mtcars$name <- rownames(mtcars)
# Let me order the mtcars data by its mpg value (descending order) and store it as Economical
Economical <- mtcars[order(mtcars$mpg, decreasing = TRUE),]
# print its mpg value with the name of car using paste() function for every cars
# The answer should be like this:
#[1] "The mpg of  Toyota Corolla is 33.9"
#[1] "The mpg of  Fiat 128 is 32.4"
#[1] "The mpg of  Honda Civic is 30.4"
# ...
#[1] "The mpg of  Camaro Z28 is 13.3"
#[1] "The mpg of  Cadillac Fleetwood is 10.4"
#[1] "The mpg of  Lincoln Continental is 10.4"

for (i in 1:length(Economical$name)){
  print(paste("The mpg of ",Economical$name[i], "is",Economical$mpg[i] ))

  }

# question 4
# Let's check the 1/4 mile time (qsec) of every car. (i.e. Use mtcars data)
#  Print out, for example, "Masda RX4 is fantastic!", if the 1/4 mile time (qsec) of the car is less or eaual to  15,
# "Masda RX4 is decent", if the 1/4 mile time of the car is between 15 and 19,
# "Masda RX4 is a turtle!", otherwise, using for loop, paste() function, and if else statement.

for (i in 1:length(mtcars$qsec)){
  
  if (mtcars$qsec[i] <= 15){
    print(paste(mtcars$name[i],"is fantastic!"))
  } else if (mtcars$qsec[i] > 15 & mtcars$qsec[i] < 19){
    print(paste(mtcars$name[i],"is decent"))
  } else {
    print(paste(mtcars$name[i],"is a turtle!"))
  }
}



