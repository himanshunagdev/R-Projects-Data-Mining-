#  Course       : MIS 637
#  First Name   : Himanshu 
#  Last Name    : Nagdev
#  ID           : 10395864
#  HW           :Assignment 3 (Exlore and Clean)

#Load the following CSV file to your R environment :
dat = read.csv("http://www.math.smith.edu/sasr/datasets/help.csv", header = TRUE)

#Create a dataframe of: id, pcs1, mcs1, substance, and race group
mcs1 <- dat[,'mcs1']

#Calculate: Mean, Max, STD, Max, Min of mcs1
meanOfMcs1 <-c(mean(mcs1,na.rm =TRUE))

maxOfMcs1 <-c(max(mcs1,na.rm=TRUE))

medianOfMcs1 <- c(median(mcs1,na.rm=TRUE))

maxOfMcs1<-c(max(mcs1,na.rm = TRUE))

minOfMcs1<-c(min(mcs1,na.rm=TRUE))

sdOfMcs1<-c(sd(mcs1,na.rm=TRUE))

#Create a frequency table of substance vs. racegroup
attach(dat)

sepElements<-unlist(dat)
freqTables<-table(sepElements[87],sepElements[88])
freqTables

#directly can be done
table('substance','racegrp')

#Substitute the missing values of mcs1 by its' average
mcs1[is.na(mcs1)] <- meanOfMcs1
meanOfMcs2<-c(mean(mcs1))


