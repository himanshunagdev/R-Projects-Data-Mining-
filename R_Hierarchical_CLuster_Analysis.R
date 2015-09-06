#  Course          : MIS 637
#  First Name      : Himanshu
#  Last Name       : Nagdev 
#  Id              : 10395864
#  purpose         : Hierarchical Cluster Analysis(5.1)

install.packages("ppls")
library(stats)
library(ppls)
rm(list=ls())
#Create a vector of the follow points
vectorV1<-c(7,10,13,21,28,28,35,43,44,50,57,62,63,71,78,88,89,90,94,98)
#Normalization function
normvec1<-(vectorV1-min(vectorV1))/(max(vectorV1)-min(vectorV1))


#Calculate and show the distance between each points
distance1 <- dist(normvec1, method = "euclidean")


#Perform clustering analysis and plot the result using "average" linkage
clusAnalysis<-hclust(distance1,method="average")
plot(clusAnalysis,main = "Cluster Analysis",cex = 0.8,hang=1)

#  purpose         : Hierarchical Cluster Analysis(5.2)

#Read the file
dat=read.csv("http://www.math.smith.edu/sasr/datasets/help.csv",header = TRUE)
attach(dat)
dat1<-unlist(dat)
dat2<- as.vector(dat1, mode = 'double')
gender<-dat[,'female']
age<-dat[,'age']

#Normalzize
norm<- (age-min(age))/(max(age)-min(age))

#bind the columns
databind<-cbind(gender,norm)

# K-Means Clustering
Kclus<-kmeans(databind,2)

#clusters and the centers
plot(databind,col= Kclus$cluster)
points(Kclus$centers,col=1:2)

#Type of addiction(substance), Age, Gender
subs<-dat[,'substance']
#binding
cols3<- cbind(gender,subs,age)

# K-Means Clustering
kclus2<-kmeans(cols3,2)

# plot the clusters and the centers
plot(kclus2,col= kclus2$cluster)
points(kclus2$centers,col=21:12)
