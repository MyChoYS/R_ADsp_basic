# Analysis of economic information 
# Week 6
# homework until Oct 21

# question 0
# Print your name and student number by using print() function
print("12142139 cho yong sang")


# question 1 
d <- data.frame(x = 1:2, y = 3:4)
m <- matrix(1:4, nrow= 2)
mylist <- list(d,m)
# check the structure of "mylist" by using function str()
str(mylist)

# question 2
m <- matrix(1:4, nrow = 1)
d <- data.frame(a = 1:2, b = c("cat", "duck"))
l <- list(m, df = d)
#  extract the element "df" from the list "l" by using square brackets [[]]
l[["df"]]
l[[2]]

# question 3
m <- matrix(1:4, nrow = 1)
d <- data.frame(a = 1:2, b = c("cat", "duck"))
l <- list(m, df = d)
# extract the element "m" from the list "l" by using square brackets [[]]
l[[1]]

# question 4
d <- data.frame(x = 1:2, y = 3:4)
m <- matrix(1:4, nrow= 2)
mylist <- list(d = d,matrix = m)
# You can use the shortcut you learned with data frames to extract a single element from a list like this: listname$element.
# extract the element “d” from the list “mylist” by using “$” operator
mylist$d



