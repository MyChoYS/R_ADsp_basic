# Analysis of economic information 
# Week 8
# homework until Oct 28

# question 0
# Print your name and student number by using print() function
print("12142139 choyongsang")

# question 1
mtcars <- mtcars
View(mtcars)
??mtcars
# Subset cases where the number of cylinders (cyl) is 8 (Don't use subset function) 
# and store it as new data frame "eightCylinders"
eightCylinders = sum(mtcars[,2 ] == 8)
eightCylinders

# question 2. Subset cases where the number of forward gears (gear) is 3 (Don't use subset function) 
# and store it as new data frame "threeGears"
threeGears = sum(mtcars[ , "gear"] == 3)
threeGears

# question 3. Return only rows for the number of forward gears (gear) that are 3 or 5 
# and store it as new data frame "threeFiveGears"
threeFiveGears = sum(mtcars[, "gear"] == 3 | mtcars[, "gear"] == 5)
threeFiveGears

# question 4. Return only rows for the number of forward gears (gear) that are 4, and transmission (am) is automatic (0),
# and store it as new data frame "fourGearAuto"
fourGearAuto = sum(mtcars[, "gear"] == 4 | mtcars[, "am"] == 0)
fourGearAuto


# question 5. Return only rows for the number of forward gears (gear) is NOT 4,
# and store it as new data frame "notFourGear"
notFourGear = sum(mtcars[, "gear"] != 4 )
notFourGear
 

# question 6. I want to print "My car is heavy!", if the weight (wt) of my car is greater than 4, 
# and if not, print "My car is not that heavy." 
# Complete belowed if statement
mycar <- mtcars[8,]

if (mycar$wt > 4) {
  print("My car is heavy!")
} else {
  print("My car is not that heavy.")
}

# question 7. I want to print "My car is automatic!", if the transmission of my car is automatic (am is 0), 
# and if not, print "My car is manual." 
# Complete belowed if statement
mycar <- mtcars[8,]

if (mycar$am = 0) {
  print("My car is automatic.")
} else {
  print("My car is manual")
}

# question 8. I want to print "My car is very heavy!", if the weight (wt) of my car is greter or equal to 4,
#  "My car is heavy enough", if the weight of my car is greater or equal to 3 and less than 4,
# "My car is light", otherwise.
# Hint: use else if statement
mycar <- mtcars[15,]
if (mycar$wt >=4){
  print("My car is very heavy")
} else if (mycar$wt >=3 & mycar$wt < 4) {
  print("My car is heavy enough")
} else {
  print("My car is light")
}

# question 9. I want to print "My car is fantastic!", if the 1/4 mile time (qsec) of my car is less or eaual to  15,
#  "My car is decent", if the 1/4 mile time of my car is between 15 and 19,
# "My car is a turtle!", otherwise
# Hint: use else if statement
mycar <- mtcars[6,]
if (mycar$qsec <= 15){
  print("My car is fantastic!")
} else if (mycar$qsec > 15 & mycar$qsec <= 19){
  print("My car is decent")
} else {
  print("My car is a turtle!")
}
  



