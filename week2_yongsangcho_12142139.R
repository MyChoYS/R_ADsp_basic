#sep 10 2020
#Analysis of economic information

# R basic====
## 1. Arithmetic
## R uses + - / * like calculator
23+34
20-6
4 * 8
50 / 5

# expontiation operator
3^3
2**3

8^(1/3)
4^(1/2)

sqrt(9)
sqrt(25)

# absoulute value(절대값)
abs(-15) 

# R variable

age <- 20
age

pi <- 3.14

income <- 100
costs <- 20
profit <- income - costs
profit

age <- age+1

## 2. Data type
# character(이름), numeric(숫자), integer(정수), complex(복소수), logical(참,거짓)

class("Helloworld")
str("helloworld")

n <- 3.14
class(n)

a <- "3.14"
class(a)

n+a

n < 0
n > 0

# 3. Vector(하나 이상의 관측치)

v <- c(1952,1957,1962) ##numeric vector
v <- c("x", "y", "z")  ##character vector
v <- c(TRUE, FALSE, TRUE) ##logical vector


value <- c(1,2,3)
title <- c("x","y","z")
names(value)
names(value) <- title

value

v <- c(1+1, 2+2, 3+3)
v

a <- c(1,2,3)
b <- c(4,5,6)

c <- a + b
c

sum(v)
length(a)

c <- a - b 
c

a[1]
a[2]
a[3]
b[2]

v <- c(6,7,8,9,10)
v[c(1,2)]
v[2:4]
v[c(2,3,4)]
v[c(1,3:5)]
v[c(5,3,1)]

a <- c("white", "red", "blue", "yellow")
b <- a[c(2,3)]
b
a[2:4]
1:5
1:10

c(9,10,7,1)[2:3]

a <- c(1,2,3)
b <- c(4,5,6)

c <- a[c(1,2)] + b[c(2,3)]
c
