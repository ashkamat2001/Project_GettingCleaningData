getwd()
setwd(".\\Coursera-GettingData\\Project_Data")
#Data downloaded from
dataUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(dataUrl,destfile=".//Project_data.zip", mode="wb")

#Extract the dataset manually

#Read in Activity Lables from activity_labels.txt. : 6 rows, 2 vars
#$V1
#$V2
#Each row of this table contains the activity codes and names
#Setting the names to appropriate names
activity_labels=read.table("UCI HAR Dataset\\activity_labels.txt")
names(activity_labels)=c("ActivityCode","Activity")
activity_labels

#Read in features.txt : 561 rows, 2 vars 
#Info about these in features_info.txt
#$V1 - feature nr
#$V2 - feature name
#Each row of this table contains the variable names in x_train
#Setting the names to appropriate names
features=read.table("UCI HAR Dataset\\features.txt", sep=" ")
names(features)=c("FtrNr", "FtrName")
head(features,5)

#Get the feature names that correspond to mean and std vars
mean_std_ftr_names = grep("mean|std", features$FtrName, ignore.case="TRUE")
mean_std_ftr_names = features[mean_std_ftr_names,]
mean_std_ftr_names
nrow(mean_std_ftr_names)
ftr_names=as.character(mean_std_ftr_names$FtrName)
ftr_nrs=as.numeric(mean_std_ftr_names$FtrNr)
ftr_nrs
ftr_names


#Read in Traning data from y_train.txt. They are the activity codes for x_train
#$V1:$V561
#The names for these codes are in activity_labels
#x_train & y_train need to be merged horizontally.
y_train=read.table("UCI HAR Dataset\\train\\y_train.txt")
names(y_train)=c("ActivityCode")
head(y_train,5)
#y_train$ActivityCode
#table(y_train)

#Read in Traning data from X_train.txt. 
#$V1;$V561
#This contains the actual data. 
x_train=read.table("UCI HAR Dataset\\train\\x_train.txt")
#setting the names from features.txt 
names(x_train)=features$FtrName
head(x_train,1)
#Retrieve only std & mean related columns
x_train = x_train[,ftr_names]
names(x_train)

#Reading in subject_train
subject_train=read.table("UCI HAR Dataset\\train\\subject_train.txt")
names(subject_train)=c("Subject")
# head(subject_train,1)
# subject_train$Subject

#Merging the vars from subject,y & x together
train_data = cbind(subject_train, y_train, x_train)
names(train_data)

#Read in the Test data
x_test=read.table("UCI HAR Dataset\\test\\x_test.txt")
names(x_test)=features$FtrName
head(x_test,1)
#Retrieve only std & mean related columns
x_test = x_test[,ftr_names]
names(x_test)

# y_test
# 1   2   3   4   5   6 
# 496 471 420 491 532 537 
y_test=read.table("UCI HAR Dataset\\test\\y_test.txt")
names(y_test)=c("ActivityCode")
head(y_test,5)
y_test$ActivityCode
table(y_test)

#Reading in subject_test
subject_test=read.table("UCI HAR Dataset\\test\\subject_test.txt")
names(subject_test)=c("Subject")
# head(subject_test,1)
# names(subject_test)

#Combining all test data together
test_data = cbind(subject_test, y_test,x_test)
names(test_data)

#Merging training and test sets
data=rbind(train_data,test_data)
names(data)

#Replace activity code by activity label
data=merge(y=activity_labels, x=data, by.x="ActivityCode", by.y="ActivityCode")
names(data)
head(data,1)

#Remove ActivityCode var
data=data[,-1]

library(dplyr)
#Averaging by Activity and Subject
data_summ = summarise_each(group_by(data,Activity,Subject),funs(mean))
names=names(data_summ)
#Augmenting the names to indicate that it is the eman of that feature
for (i in 3:88)
{
  names(data_summ)[i]=paste("MeanOf_",gsub("\\(\\)","",names[i]), sep="")
}
names(data_summ)

#Writing the data to a file 
write.table(tidy_data, "TidyData.txt" )

#Checking that the data can be Read 
new_data=read.table("TidyData.txt" )
names(new_data)



#by or sparseby did not work. It said argument is not numeric or logical
# tidy_data=by(data, list(data$Activity,data$SubjectCode), mean)
# tidy_data
# class(data[,3])
# 
# library(reshape)
# tidy_data=sparseby(data=data,INDICES=data$Activity, FUN=mean, na.rm=TRUE)

#Resorting to splitting and averaging separately & reconstructing dataframe
split_data=split(data,list(data$Activity,data$SubjectCode))
class(split_data)
n=length(split_data)
tidy_data=data.frame()
for (i in 1:n) 
{
  t=split_data[[i]]
  #Set the activity code as 1st col
  tidy_data[i,1]=t[1,88]
  #set subject as 2nd col 
  tidy_data[i,2]=t[1,1]
  for (j in 2:87)
  {
     tidy_data[i,j+1] = mean(t[,j])
  }
     
}
names(tidy_data)[1]="Activity"
names(tidy_data)[2]="Subject"
for (i in 2:87)
{
  names(tidy_data)[i+1]=paste("MeanOf",gsub("\\(\\)","",ftr_names[i-1]))
}
names(tidy_data)
tidy_data = tidy_data[order(tidy_data$Activity,tidy_data$Subject),]

write.table(tidy_data, "TidyData.txt" )
new_data=read.table("TidyData.txt" )
names(new_data)
write.table(names(new_data), "Names.txt")  
