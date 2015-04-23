# Getting and Cleaning Data - Course Project 

The data can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
The data must be stored locally.  Extract the content of the subdirectory UCI HAR Dataset/, into the same directory in which run_analysis.R resides.  The data will ahve two subdirectories, test and train.

# The goal of this script:
1. Merge the training and test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run by sourcing run_analysys.R from the directory that contains the script and the data.

source("run_analysis.R")


