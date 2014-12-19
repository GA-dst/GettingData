### run_analysis.R

### read data into R

xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
yTest <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features <- read.table("./UCI HAR Dataset/features.txt")

### make features valid and unique to use as column headings, correct original
### source errors such as "BodyBody" with "Body"

names <- make.names(features$V2, unique = TRUE, allow_ = TRUE)
names <- gsub("BodyBody", "Body", names)


### add descriptive column headings to Test dataframes and Train dataframes


colnames(xTest) <- names
colnames(xTrain) <- names
colnames(yTest) <- "activity"
colnames(yTrain) <- "activity"
colnames(subjectTest) <- "subject"
colnames(subjectTrain) <- "subject"

### select columns for mean and standard deviation

testMean <- select(xTest, contains(".mean..", ignore.case = TRUE))
testStd <- select(xTest, contains(".std..", ignore.case = TRUE))
trainMean <- select(xTrain, contains(".mean..", ignore.case = TRUE))
trainStd <- select(xTrain, contains(".std..", ignore.case = TRUE))

### combine test dataframes and train dataframes

testData <- cbind(subjectTest, yTest, testMean, testStd)
trainData <- cbind(subjectTrain, yTrain, trainMean, trainStd)
testtrain_Data <- rbind(testData, trainData)

### remove any extraneous "." (periods) in column headings caused by the make.names 
### function

colnames(testtrain_Data) <- gsub("mean..", "mean", colnames(testtrain_Data))
colnames(testtrain_Data) <- gsub("std..", "std", colnames(testtrain_Data))

### Replace activities with descriptive activity names
###
### The "activity" column in testtrain_Data contains values 1-6 which
### correspond to the 6 rows in activityLabels. The second column in
### activityLabels contains the description which will be used to replace
### the integer value in testtrain_Data

testtrain_Data[,"activity"]<-activityLabels[testtrain_Data[,"activity"],"V2"]

### create a tidy dataset containing the average of each variable for each activity 
### and each subject.

averages <- testtrain_Data %>% 
        group_by(subject, activity) %>% 
        summarise_each(funs(mean))

### Write the dataframe created in the previous step as a text file.

write.table(averages, file = "./tidydata.txt", row.names = FALSE)


