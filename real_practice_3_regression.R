# Analysis of economic information 
# Week 11
# practice at Nov 12
library(openintro); library(dplyr); library(ggplot2); library(gapminder)

data(mammals)
?mammals

# question 1. Using mammals data, I create a scatterplot of brain weight (brain_wt)
# as a function oflife span (life_span).
ggplot(mammals, aes(y = (brain_wt), x = (life_span))) +
  geom_point()
# Do you think the correlation between brain weight and their life span is stong? 



# question 2. Using mammals data, I create a scatterplot of brain weight (brain_wt) 
# as a function oflife span (life_span) again but using log scale this time.
ggplot(mammals, aes(y = (brain_wt), x = (life_span))) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()
# Do you think the correlation between brain weight and their life span is stong? 


# question 3. Calculate the correlation between log brain weight (brain_wt) 
# and the number of weeks of gestation. Is it strong correlation? Is it positive?




# question 4. create a linear model of log brain weight (brain_wt)
# as a function of log life span (life_span).
# Then check the result using summary() function.



# question 5. what's the slope and intercept of the model that is checked in question 4? 
# Is it stitistically significant?


# question 6. what's the R2 of the model that is checked in question 4?



# question 7. what's the RMSE of the model that is checked in question 4?




# question 8. Using gapminder_2007 data, I create a scatterplot of lifeExp
# as a function of gdpPercap.
data(gapminder)
gapminder_2007 <- gapminder %>% 
  filter(year == 2007)
ggplot(gapminder_2007, aes(x = (gdpPercap), y = (lifeExp))) +
  geom_point()
# Do you think the relationship between lifeExp and gdpPercap is linear? 



# question 9. Using gapminder_2007 data, again, I create a scatterplot of lifeExp
# as a function of log base 10 of gdpPercap, (which means that the scale of x axis is log base 10). 
ggplot(gapminder_2007, aes(x = (gdpPercap), y = (lifeExp))) +
  geom_point() +
  scale_x_log10()
# Do you think the relationship between lifeExp and log10(gdpPercap) is linear? 




# question 10. create a linear model of lifeExp as a function of log10 gdpPercap using gapminder_2007.
# Then check the result using summary() function.



# question 11. what's the slope and intercept of the model that is checked in question 10? 
# Is it stitistically significant?



# question 12. How much can we explain the countries life expectancy using their log10 of gdp per capita?



# question 13. what's the RMSE of the model that is checked in question 10?








