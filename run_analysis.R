# GetData-016 Class Project
# student: Mark Anderson (coursera.org@ma7.org)
# date: Sat Dec 13, 2014
# filename: run_analysis.R

# program produces as output 
## 'tidyData.txt'

# program assumes GetData.R has been run and the following files are in the working directory
## X_test.txt          -- measurement data from test set
## subject_test.txt    -- subject measured for each row X_test.txt
## y_test.txt          -- activity measured for each row X_test.txt
## X_train.txt         -- measurement data from train set
## subject_train.txt   -- subject measured for each row X_train.txt
## y_train.txt         -- activity measured for each row X_train.txt
## activity_labels.txt -- column index and label for activity_id in y_{test|train}
## features.txt        -- column index and label for each column in X_{test|train}

# program follow along closely to number requirements of assignment

# Requirement 1. Merge the training and the test sets to create on data set.

fileColClasses <- function(filename) {
  pre         <- read.table(filename,header=FALSE,nrows=1)
  classes     <- sapply(pre, class)
}

loadAndCombineDataSet <- function(Xfilename, yFilename, subjectFileame) {
  X <- read.table(
    Xfilename,
    colClasses=fileColClasses(Xfilename))
  
    subject_id <- read.table(
    subjectFileame,
    col.names=c('subject_id'), 
    colClasses=fileColClasses(subjectFileame))
  
  
  activity_id <- read.table(
    yFilename, 
    col.names=c('activity_id'), 
    colClasses=fileColClasses(yFilename))

  cbind(X,subject_id,activity_id)
}

trainDS <-loadAndCombineDataSet("X_train.txt", "y_train.txt", "subject_train.txt")
testDS  <-loadAndCombineDataSet("X_test.txt",  "y_test.txt",  "subject_test.txt")
totalDS <-rbind(trainDS, testDS)

# Requirement 2.  Extract only the measurements on the mean and standard deviation for each
#          measuerment.

processFeatureListFile <- function(filename) {
  features <- read.table(
    filename,
    col.names=c('feature_id','feature_name'),
    colClasses=c('numeric','character'))
  
  features[which(grepl('-std\\(\\)',features[,2])|grepl('-mean\\(\\)',features[,2])),]

}

desiredFeatures <- processFeatureListFile("features.txt")
subject_idx  <- grep("^subject_id$", colnames(totalDS))
activity_idx <- grep("^activity_id$", colnames(totalDS))
desiredCols <- c(desiredFeatures$feature_id, subject_idx, activity_idx)
desiredDS <- totalDS[,desiredCols]

# Requirement 4.  Appropriately label the data set with descriptive variable names

colnames(desiredDS) <-c (desiredFeatures$feature_name,"subject_id","activity_id")

# Requirement 3.  Use descriptive names to name the activities in the data set

activities <- read.table(
  "activity_labels.txt",
  col.names=c('activity_id','activity_name'),
  colClasses=c('numeric','character'))  

activityLabelsDS <- merge(activities, desiredDS, by="activity_id", all.x = TRUE)


# Requirement 5.  Create a second, independent tidy set with the average of each variable for
#          each activity and each subject

library(reshape2)
meltDS <- melt(
  activityLabelsDS,
  id=c('activity_name','subject_id'), 
  measure.var=desiredFeatures$feature_name)

tidyData <- dcast(meltDS, subject_id + activity_name ~ variable, mean)

write.table(tidyData,"tidyData.txt",row.name=FALSE)
