#  Course       : MIS 637
#  First Name   : Himanshu 
#  Last Name    : Nagdev
#  ID           : 10395864
#  HW           :Assignment 4 

#rm(list=ls())
install.packages('library')
library('class')
data(iris)
#Load the IRIS dataset into memory
mydf<-iris
attach(iris)


#Create a test dataset by extracting every fifth (5th) row of the data, starting with the first row
v<-length(Sepal.Length)
testno<-c(seq(1,v, 5))
testdata<-iris[testno,]


#Create a training dataset by excluding the test data from the IRIS dataset
trainingdata<-iris[-testno,]

#Classification
tgt_trn<-trainingdata[,5]
tgt_tst<-testdata[,5]



#Use the training dataset to classify the test data using knn with k=1, k=5, k=13, k=30
knn1<-knn(trainingdata[,-5],testdata[,-5],tgt_trn,k=1)
knn2<-knn(trainingdata[,-5],testdata[,-5],tgt_trn,k=5)
knn3<-knn(trainingdata[,-5],testdata[,-5],tgt_trn,k=13)
knn4<-knn(trainingdata[,-5],testdata[,-5],tgt_trn,k=30)

table(tgt_tst,knn1)     
table(tgt_tst,knn2)
table(tgt_tst,knn3)
table(tgt_tst,knn4)
#Measure the accuracy of your classifications. What k would you choose and why?

#Only k=30 gives correct prediction from the 4 tables hence k=30 should be chosen

