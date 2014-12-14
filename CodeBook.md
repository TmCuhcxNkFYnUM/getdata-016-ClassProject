TODO
# Code Book for GetData Class Project data file tidyData.txt
## Human Activity Recognition Using Smartphone Data Sets

[project homepage](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Original datasets](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

### Citation :
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

## Description of data from original source 
### Feature Selection

The features selected for this database come from the accelerometer
and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These
time domain signals (prefix 't' to denote time) were captured at a
constant rate of 50 Hz. Then they were filtered using a median
filter and a 3rd order low pass Butterworth filter with a corner
frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity
were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to
indicate frequency domain signals).

# tidyData.txt

Each value here is a mean of all observed data for each heading for specified combination of
subject and activity.

data create with the command 'write.table(tidyData,"tidyData.txt",row.name=FALSE)'

first line is header data

fields are seperated by space character (' ')

string fields are enclosed in double quotes ('"')

## Fields

## subject_id
  integer (1:30)
  
## activity_name
  string ("LAYING"|"SITTING"|"STANDING"|"WALKING"|"WALKING_DOWNSTAIRS"|"WALKING_UPSTAIRS")

## tBodyAcc
 time domain signal,
 raw signal
### tBodyAcc-mean()-X
 numeric 
### tBodyAcc-mean()-Y
 numeric 
### tBodyAcc-mean()-Z
 numeric 
### tBodyAcc-std()-X
 numeric 
### tBodyAcc-std()-Y
 numeric 
### tBodyAcc-std()-Z
 numeric 

## tGravityAcc
 time domain signal,
 raw signal
### tGravityAcc-mean()-X
 numeric 
### tGravityAcc-mean()-Y
 numeric 
### tGravityAcc-mean()-Z
 numeric 
### tGravityAcc-std()-X
 numeric 
### tGravityAcc-std()-Y
 numeric 
### tGravityAcc-std()-Z
 numeric 

## tBodyAccJerk
 time domain signal,
 raw signal
### tBodyAccJerk-mean()-X
 numeric 
### tBodyAccJerk-mean()-Y
 numeric 
### tBodyAccJerk-mean()-Z
 numeric 
### tBodyAccJerk-std()-X
 numeric 
### tBodyAccJerk-std()-Y
 numeric 
### tBodyAccJerk-std()-Z
 numeric 

## tBodyGyro
 time domain signal, 
 raw signal
### tBodyGyro-mean()-X
 numeric 
### tBodyGyro-mean()-Y
 numeric 
### tBodyGyro-mean()-Z
 numeric 
### tBodyGyro-std()-X
 numeric 
### tBodyGyro-std()-Y
 numeric 
### tBodyGyro-std()-Z
 numeric 

## tBodyGyroJerk
 time domain signal, 
 raw signal
### tBodyGyroJerk-mean()-X
 numeric 
### tBodyGyroJerk-mean()-Y
 numeric 
### tBodyGyroJerk-mean()-Z
 numeric 
### tBodyGyroJerk-std()-X
 numeric 
### tBodyGyroJerk-std()-Y
 numeric 
### tBodyGyroJerk-std()-Z
 numeric 

## tBodyAccMag
 time domain signal, 
 Euclidean norm
### tBodyAccMag-mean()
 numeric 
### tBodyAccMag-std()
 numeric 

## tGravityAccMag
 time domain signal, 
 Euclidean norm
### tGravityAccMag-mean()
 numeric 
### tGravityAccMag-std()
 numeric 

## tBodyAccJerkMag
 time domain signal, 
 Euclidean norm
### tBodyAccJerkMag-mean()
 numeric 
### tBodyAccJerkMag-std()
 numeric 

## tBodyGyroMag
 time domain signal, 
 Euclidean norm
### tBodyGyroMag-mean()
 numeric 
### tBodyGyroMag-std()
 numeric 

## tBodyGyroJerkMag
 time domain signal, 
 Euclidean norm
### tBodyGyroJerkMag-mean()
 numeric 
### tBodyGyroJerkMag-std()
 numeric 

## fBodyAcc
 frequency domain signal
### fBodyAcc-mean()-X
 numeric 
### fBodyAcc-mean()-Y
 numeric 
### fBodyAcc-mean()-Z
 numeric 
### fBodyAcc-std()-X
 numeric 
### fBodyAcc-std()-Y
 numeric 
### fBodyAcc-std()-Z
 numeric 

## fBodyAccJerk
 frequency domain signal
### fBodyAccJerk-mean()-X
 numeric 
### fBodyAccJerk-mean()-Y
 numeric 
### fBodyAccJerk-mean()-Z
 numeric 
### fBodyAccJerk-std()-X
 numeric 
### fBodyAccJerk-std()-Y
 numeric 
### fBodyAccJerk-std()-Z
 numeric 

## fBodyGyro
 frequency domain signal
### fBodyGyro-mean()-X
 numeric 
### fBodyGyro-mean()-Y
 numeric 
### fBodyGyro-mean()-Z
 numeric 
### fBodyGyro-std()-X
 numeric 
### fBodyGyro-std()-Y
 numeric 
### fBodyGyro-std()-Z
 numeric 

## fBodyAccMag
 frequency domain signal
### fBodyAccMag-mean()
 numeric 
### fBodyAccMag-std()
 numeric 

## fBodyBodyAccJerkMag
 frequency domain signal
### fBodyBodyAccJerkMag-mean()
 numeric 
### fBodyBodyAccJerkMag-std()
 numeric 

## fBodyBodyGyroMag
 frequency domain signal
### fBodyBodyGyroMag-mean()
 numeric 
### fBodyBodyGyroMag-std()
 numeric 

## fBodyBodyGyroJerkMag
 frequency domain signal
### fBodyBodyGyroJerkMag-mean()
 numeric 
### fBodyBodyGyroJerkMag-std()
 numeric 
