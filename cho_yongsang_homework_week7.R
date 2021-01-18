# Analysis of economic information 
# Week 7
# homework until Oct 28

# question 0
# Print your name and student number by using print() function
print("12142139 cho-yong sang")


# question 1
mtcars <- mtcars
View(mtcars)
??mtcars
# check the structure of the data "mtcars" by using function str()
str(mtcars)


# example question 
# extract cars whose cyl is 4 and store it as new data frame "fourCylinders"
fourCylinders <- mtcars[mtcars$cyl == 4,] # this is the anwer
fourCylinders

# question 2
# extract(subset) cars whose cyl is greater than 4 and store it as new data frame "fourMoreCylinders"
fourMoreCylinders <- mtcars[mtcars[,2] >= 4,]
fourMoreCylinders

# question 3
# extract cars whose horsepower is greater than 120 and store it as new data frame "powerfulCars"
# Hint: if you don't know which column represents the horsepower, type ??mtcars and see the explanation that apprears on Help page. 
powerfulcars <- mtcars[mtcars$hp > 120,]
powerfulcars
###??mtcars >> hp = gross horsepower, use console.

# question 4
# extract(subset) cars whose horsepower is greater or qual to  120 and less than 200, and store it as new data frame "powerfulCars_2"
powerfulcars_2 <- mtcars[mtcars$hp >= 120 & mtcars$hp < 200 , ]
powerfulcars_2

# question 5
# extract(subset) cars whose horsepower is greater or qual to 200, and store it as new data frame "mostPowerfulCars"
mostpowerfulcars <- mtcars[mtcars$hp >= 200 , ]
mostpowerfulcars

# question 6
# extract(subset) cars whose cylinders are NOT 4, and store it as new data frame "notFourCyl"
notFourCy <- mtcars[mtcars$cyl != 4, ]
notFourCy

# question 7
# extract(subset) cars whose cylinders are 4 and transmission (am) is automatic, and store it as new data frame "fourCylAuto"
fourCylAuto <- mtcars[mtcars$cyl == 4 & mtcars$am == 0, ]
fourCylAuto

# question 8
# extract(subset) cars whose horsepower is greater than 120 and transmission (am) is automatic, and store it as new data frame "powerfulAuto"
powerfulAuto <- mtcars[mtcars$hp >= 120 & mtcars$am == 0, ]
powerfulAuto

# question 9
# extract(subset) cars whose weight is greater than 4 and horsepower is greater than 150, and store it as new data frame "powerfulHeavy"
powerfulHeavy <- mtcars[mtcars$wt > 4 & mtcars$hp >= 150, ]
powerfulHeavy







