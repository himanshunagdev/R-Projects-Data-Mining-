#  Course    : MIS 637
#  First Name  : Himanshu
#  Last Name  : Nagdev
#  First CART 


rm(list=ls())

#install the library and load the package

#install.packages("rpart")
library(rpart)
?rpart()

## read and view the data
dsn<- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv")
View(dsn)
attach(dsn)

cocaine<-ifelse(dsn$substance=='cocaine','Yes','No' )

mysubset<-data.frame(cbind(cocaine,dsn$racegrp,female))

#Grow the tree 
mytree<-rpart( cocaine~racegrp+female,data=mysubset)
mytree

# install rpart package for plotting. 
#install.packages("rpart.plot")

#include the library and plot the graph
library(rpart.plot)
prp(mytree)
summary(mytree) # detailed summary of splits



