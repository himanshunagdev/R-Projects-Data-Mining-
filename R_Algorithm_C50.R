#  Course    : MIS 637
#  First Name  : Himanshu 
#  Last Name  : Nagdev
#  First C4.5/c50 


#########################################################
##  Step 0: Clear the environment
##           
##
#########################################################
rm(list=ls())


#########################################################
##  Step 1: Load the relavent packages
##           
##
#########################################################


install.packages("C50", repos="http://R-Forge.R-project.org")
install.packages("C50")
library('C50')

?C5.0
#########################################################
##  Step 2: Load the data
##           
##
#########################################################


dsn<- read.csv("http://www.math.smith.edu/sasr/datasets/help.csv") # read a dataset
#View(dsn) 
#attach(dsn)
#detach(dsn)

cocaine<-ifelse(dsn$substance=='cocaine','Yes','No' ) 
 mysubset<-data.frame(cbind(cocaine,racegrp=as.character(dsn$racegrp),gender=dsn$female))
                   

ruleModel <- C5.0(cocaine~., data =mysubset , rules = TRUE)          
 
summary.C5.0(ruleModel)
C5imp(ruleModel)
?C5.0()
 


