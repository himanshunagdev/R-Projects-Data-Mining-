x<- c(1,2,3)
print (x)
y<- c(11,12,13,14,15,16)
print (y)
z=x+y
print (z)
#Since the vector y is double the length of vector x addition is possible and the addition of the corresponding element of x are added to the respective elements of y and since the elements are doulble the addition is done twice with further respective elements of y
Last_name<-'Nagdev'
First_name<- 'Himanshu'
stud_id<-10395864

length(Last_name)
typeof(Last_name)
#Since the data type of Last_name is character hence the length is 1
my_info<- c(First_name, Last_name, stud_id) 
my_info
length(my_info)
typeof(my_info)
rm(First_name)
my_info
roster <- data.frame(First=c('fName1','fName2'),Last=c('LName1','LName2'),ID = c(1111,2222)) 
roster
roster<-read.csv("http://www.math.smith.edu/sasr/datasets/help.csv") 
rm (my_info)
rm (Stud_id)
rm (roster)
