#ggplot learning script
#Dan Luo
#Feb 22 2015

install.packages("ggplot2",dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

head(iris)
library(ggplot2)
library(plyr)
library(ggthemes)
library(reshape2)

myiris<- iris

myplot<-ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)

ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point()
# another way
myplot + geom_point()

# change the asesthetics of a geom
# increase the size of point
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point(size=3)

# add some color
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width,color=Species)) +
  geom_point(size=3)

# differentiate points by shape
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width,color=Species)) +
  geom_point(aes(shape=Species),size=3)
# setting size, mapping shape

# Exercise 1
# make a small sample of the diamonds dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(d2,aes(x=carat, y=price, color=color))+geom_point()

# Built-in stat example: Boxplots
library(MASS)
ggplot(birthwt, aes(factor(race),bwt)) + geom_boxplot()




