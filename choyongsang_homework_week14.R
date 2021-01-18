# Analysis of economic information 
# Week 14
# homework until at midnight of Dec 9
library(openintro); library(dplyr); library(ggplot2); library(gapminder)

# question 0
# Print your name and student number BY USING paste() and print() function 
print(paste("cho-yong sang", "12142139"))

data(mammals)
?mammals
View(mammals)
# question 1. Using mammals data, I create a scatterplot of brain weight (brain_wt)
# as a function of life span (life_span).
ggplot(mammals, aes(y = (brain_wt), x = (life_span))) +
  geom_point()
# Do you think the correlation between brain weight and their life span is stong? 
print("no")

# question 2. Using mammals data, I create a scatterplot of brain weight (brain_wt) 
# as a function of life span (life_span) again but using log scale this time.
ggplot(mammals, aes(y = (brain_wt), x = (life_span))) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10() #+
  #geom_smooth(method = "lm", se = FALSE)
# Do you think the correlation between brain weight and their life span is stong? 
hist(mammals$brain_wt)
hist(log10(mammals$brain_wt))
print("yes")


# question 3. Calculate the correlation between log brain weight (brain_wt) 
# and the number of weeks of gestation. Is it strong correlation? Is it positive?
# search in google, "in R correlation"
a <- ggplot(mammals, aes(y = (brain_wt), x = (gestation))) + geom_point()

cor(mammals$brain_wt, mammals$life_span)
cor(mammals$brain_wt, mammals$life_span, use = "complete.obs")

mammals_2 <- mammals[-which(is.na(mammals$life_span)),]
cor(mammals_2$brain_wt, mammals_2$life_span)

print("It is a strong positive correlation")

# question 4. create a linear model of log brain weight (brain_wt)
# as a function of log life span (life_span).
# Then check the result using summary() function.

model <- lm(log(brain_wt)~ log(life_span), data = mammals)
summary(model)

# question 5. what's the slope and intercept of the model that is checked in question 4? 
# Is it stitistically significant?
model$coefficients[1]
model$coefficients[2]

print("It is tatistically significant")
## log(brain_wt) = 2.0861 * log(life_span) -2.1527 

# question 6. what's the R2 of the model that is checked in question 4?
0.6207


# question 7. what's the RMSE of the model that is checked in question 4?
1.53
##RMSE = Residual standard error


# question 8. Using gapminder_2007 data, I create a scatterplot of lifeExp
# as a function of gdpPercap.
data(gapminder)
gapminder_2007 <- gapminder[gapminder$year == 2007, ]
ggplot(gapminder_2007, aes(x = (gdpPercap), y = (lifeExp))) +
  geom_point()+
  geom_smooth(method = "lm", se = FALSE)
# Do you think the relationship between lifeExp and gdpPercap is linear? 
cor(gapminder$lifeExp,gapminder$gdpPercap,use="complete.obs")
print("Yes. It is. but weak")

# question 9. Using gapminder_2007 data, again, I create a scatterplot of lifeExp
# as a function of log base 10 of gdpPercap, (which means that the scale of x axis is log base 10). 
ggplot(gapminder_2007, aes(x = (gdpPercap), y = (lifeExp))) +
  geom_point() +
  scale_x_log10()+
  geom_smooth(method = "lm", se = FALSE)
# Do you think the relationship between lifeExp and log10(gdpPercap) is linear? 
print("Yes, more than before")



# question 10. create a linear model of lifeExp as a function of log10 gdpPercap using gapminder_2007.
# Then check the result using summary() function.
model_2 <- lm(lifeExp~ log(gdpPercap), data = gapminder_2007)
summary(model_2)

ggplot(gapminder_2007,aes(x = (gdpPercap), y = (lifeExp))) +
  geom_point()+
  scale_x_log10()


# question 11. what's the slope and intercept of the model that is checked in question 10? 
# Is it stitistically significant?
model_2$coefficients[1]
model_2$coefficients[2]
8.4051
print("Yes")

# question 12. How much can we explain the countries life expectancy using their log10 of gdp per capita?
0.652


# question 13. what's the RMSE of the model that is checked in question 10?
7.62

