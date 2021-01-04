# Analysis of economic information 
# Week 5 
# homework until Oct 14

# question 0
# Print your name and student number by using print() function
print("choyongsang 12142139")

df <- data.frame(a = 1:10, b = 51:60)

# question 1 
df1 <- data.frame(a = 1:5, b = 51:55)
# generate data frame df1 by subsetting df (using its index) and store it as a new data frame "studentResult1"
studentResult1 <- df[df$a<=5,]
studentResult1
# question 2
df2 <- data.frame(a = 5:8, b = 55:58)
# generate data frame df2 by subsetting df (using its index) and store it as a new data frame "studentResult2"
subset(df,a>=5,)
subset(subset(df,a>=5,),a<=8)
studentResult2 <- subset(subset(df,a>=5,),a<=8)
studentResult2
# question 3
df3 <- data.frame(a = c(1,3,5), b = c(51,53,55))
# generate data frame df3 by subsetting df (using its index) and store it as a new data frame "studentResult3" 
df3
df[c(1,3,5),]
studentResult3 <- df[c(1,3,5),]
# question 4
df4 <- data.frame(a = 1:3, b = 51:53)
V <- c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE)
# generate data frame df4 by subsetting df (using the Boolean vector V) and store it as a new data frame "studentResult4" 
df4
V
studentResult4 <- df[V,]
studentResult4

# question 5
df5 <- data.frame(a = 1:4, b = 51:54)
# generate data frame df5 by subsetting df (using comparison operator, such as > or <) and store it as a new data frame "studentResult5" 
df[df$a<5, ]
studentResult5 <- df[df$a<5, ]
studentResult5

# question 6
b <- c(4,3,1,2)
d <- data.frame(a = 5:8, b)
pos <- order(d$b)
# sort the data frame based on the values in b column (using ordered vector pos) and store it as a new data frame "studentResult6" 
pos
d
d[pos,]
studentResult6 <- d[pos,]
studentResult6

# question 7  >> a,b 둘다 정렬하는게 맞나요?
a <- c(2,1,3)
b <- c("x", "y", "z")
d <- data.frame(a,b)
# sort the data frame based on the values in a column (using function order()) and store it as a new data frame "studentResult7" 
q <- order(a)
w <- order(b)
e <- d[q,]
r <- d[w,]

studentResult7 <- c(e$a,r$b)
studentResult7 <- data.frame(c(e$a),c(r$b))
studentResult7

# question 8
a <- c(2,1,3,4)
b <- c("x", "y", "z", "l")
d <- data.frame(a,b)
# sort the data frame based on the values in a column (using function order()) and store it as a new data frame "studentResult8" 
q<-d[order(a),]
w<-d[order(b),]
studentResult8 <- data.frame(q$a,w$b)
studentResult8


# question 9
age <- c(31,23,24,33)
name <- c("Amy", "Jungkook", "Jimin", "Minho")
d <- data.frame(name, age)
# sort the data frame based on the values in age column (using function order()) and store it as a new data frame "studentResult9" 
q <- order(age)
w <- order(name)
d
d[q,]
studentResult9 <- d[q,]
studentResult9

