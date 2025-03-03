#Final Assignment

#Instructions:
#1.Merges the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)

#Load activity labels and feature information
activity_labels<-read.table("~/Downloads/UCI HAR Dataset/activity_labels.txt",col.names = c("id","activity"))
features<-read.table("~/Downloads/UCI HAR Dataset/features.txt", col.names = c("index","feature"))

#Extraction of measurements
extraction<- grep("(mean|std)\\(\\)", features[, "feature"])
measurement<-features[extraction,"feature"]
measurement<- gsub('[()]', '', measurement)

#Load test X & Y Test & Subject Test
xtest<-read.table("~/Downloads/UCI HAR Dataset/test/X_test.txt")[,extraction]
ytest<-read.table("~/Downloads/UCI HAR Dataset/test/y_test.txt", col.names="activity" )
stest<-read.table("~/Downloads/UCI HAR Dataset/test/subject_test.txt", col.names ="subject")
test<-cbind(xtest,ytest,stest)

#Load Training
xtrain<-read.table("~/Downloads/UCI HAR Dataset/train/X_train.txt")[,extraction]
ytrain<-read.table("~/Downloads/UCI HAR Dataset/train/y_train.txt", col.names = "activity")
strain<-read.table("~/Downloads/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
training<-cbind(xtrain,ytrain,strain)

#Merge into One Dataset
Final_Data<-rbind(test,training)

#Description of Activities Names
Final_Data$activity<-factor(Final_Data$activity,levels = activity_labels$id,labels = activity_labels$activity)

#Appropriate labels
colnames(Final_Data)<-c(measurement,"activity", "subject")

#Second independent Tiny Data Set
tidydata<-Final_Data %>%
  group_by(subject,activity)%>%
  summarise_all(mean)

write.table(tidydata, "tidydata.txt", row.name = FALSE)