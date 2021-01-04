library(reshape2)

airquality <- airquality
View(airquality)
# question 1. Using the melt() function, format "airquality" 
# with 1 measurement per Month/Day date. 
# Store it as "weatherSurvey".
head(airquality)
str(airquality)
names(airquality) <- tolower(names(airquality))
##위의 변수는 대문자를 소문자로 변환
melt_test <- melt(airquality)
melt_test2 <- melt(airquality, id.vars = c("month", "wind"), measure.vars = "ozone")
View(melt_test2)

weatherSurvey <- melt(airquality, id.vars = c("month","day"))
View(weatherSurvey)

# question 2. Specify the name of “weatherSurvey” column 3 
# as “Condition“, and the name of column 4 as “Measurement“, 
# using the melt() formula in question 1.
aq_melt <- melt(airquality, id.vars = c("month","day"), na.rm =TRUE)
View(aq_melt)

weatherSurvey2 <- melt(airquality, id.vars = c("month","day"),
                       variable.name = "condition",
                       value.name = "measurement")
View(weatherSurvey2)

# question 3. Use dcast() to reshape "weatherSurvey" from long to wide,
# with Month and Day as the first 2 columns. 
# Store it as "airqualityEdit".
aq_dcast <- dcast(aq_melt, month + day ~ variable )
View(aq_dcast)

airqulistyEdit <- dcast(weatherSurvey2, month +day ~ condition, value.var = "measurement")
View(airqulistyEdit)

# question 4. Use the dcast() function to get the means of “weatherSurvey” 
# measurement variables by month.
# Store the results as "airQualityMean".
# Also, remove not available values.

airqualityMean <- dcast(weatherSurvey2, month ~ condition, 
                        fun.aggregate = mean,
                        value.var = "measurement", na.rm =TRUE)
View(airqualityMean)

#na.rm = NA delete



