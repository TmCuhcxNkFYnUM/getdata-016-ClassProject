
url  <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip' 
file <- 'UCI_HAR_Dataset.zip'

if (!file.exists(file)) {
  download.file(url,file,method='curl')
}
dateDownloaded <- date()
unzip("UCI_HAR_Dataset.zip")

file.copy("./UCI HAR Dataset/activity_labels.txt","activity_labels.txt")
file.copy("./UCI HAR Dataset/features.txt","features.txt")

file.copy("./UCI HAR Dataset/train/X_train.txt", "X_train.txt")
file.copy("./UCI HAR Dataset/train/subject_train.txt", "subject_train.txt")
file.copy("./UCI HAR Dataset/train/y_train.txt", "y_train.txt")

file.copy("./UCI HAR Dataset/test/X_test.txt", "X_test.txt")
file.copy("./UCI HAR Dataset/test/subject_test.txt", "subject_test.txt")
file.copy("./UCI HAR Dataset/test/y_test.txt", "y_test.txt")