#Getting and Cleaning Data - Course Project 

The data can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The data must be stored locally.  Extract the content of the subdirectory UCI HAR Dataset/, into the same directory in which run_analysis.R resides.  The data will have two subdirectories, test and train.

#The goal of this script:
1. Merge the training and test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run by sourcing run_analysys.R from the directory that contains the script and the data.

source("run_analysis.R")

this will generate a tidy summary file, "tidy_set.txt" that has the average of means and standard deviation for each measurements, grouped by activity


#Code Book
Variables found in the output file, tidy_set.txt
Original description of the input data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##activity
Based on activity_labels in the input data set.
All other vaiables are averages grouped by this.
Possible values:
*            WALKING
*   WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
*            SITTING
*           STANDING
*             LAYING

##tBodyAccMag-mean()          
Average grouped by activity

##tBodyAccMag-std()
Average grouped by activity

##tGravityAccMag-mean()
Average grouped by activity

##tGravityAccMag-std()
Average grouped by activity

##tBodyAccJerkMag-mean()      
Average grouped by activity

##tBodyAccJerkMag-std()
Average grouped by activity

##tBodyGyroMag-mean()
Average grouped by activity

##tBodyGyroMag-std()
Average grouped by activity

##tBodyGyroJerkMag-mean()
Average grouped by activity

##tBodyGyroJerkMag-std()
Average grouped by activity

##fBodyAccMag-mean()
Average grouped by activity

##fBodyAccMag-std()
Average grouped by activity

##fBodyBodyAccJerkMag-mean()
Average grouped by activity

##fBodyBodyAccJerkMag-std()
Average grouped by activity

##fBodyBodyGyroMag-mean()
Average grouped by activity

##fBodyBodyGyroMag-std()
Average grouped by activity

##fBodyBodyGyroJerkMag-mean()
Average grouped by activity

##fBodyBodyGyroJerkMag-std()
Average grouped by activity


Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

