## run_analysis.R
## 
## Course project for the Coursera class Getting and Cleaning Data.
##
## Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## stored locally under ./data/CourseProject/UCI HAR Dataset
##
## The goal of this script:
## 1. Merge the training and test sets to create one data set
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Use descriptive activity names to name the activities in the data set
## 4. Appropriately label the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##
library(dplyr)

# Features: list of all features
features <- read.table("./features.txt")

# Activity labels: links the class lables with their activity name
activity_labels <- read.table("./activity_labels.txt")

# Training set
train <- read.table("./train/X_train.txt")
train_labels <- read.table("./train/y_train.txt")

# Test set 
test <- read.table("./test/X_test.txt")
test_labels <- read.table("./test/y_test.txt")

# Use the features as names for the columns
colnames(train) <- features[,2]
colnames(test) <- features[,2]

# Get the named activities
train_labels_with_activity <- merge(train_labels, activity_labels, by.x="V1", by.y="V1")
test_labels_with_activity <- merge(test_labels, activity_labels, by.x="V1", by.y="V1")

# Add a first column with the names activities
train <- cbind(activity = train_labels_with_activity[,2], train)
test <- cbind(activity = test_labels_with_activity[,2], test)

# Combine the two sets
combo <- rbind(train, test)

## Extract only the measurements on the mean and standard deviation for each measurement. 
cols <- grep("(activity|-mean\\(\\)$|std\\(\\)$)", names(combo))
combo.subset <- combo[cols]

## From the combo.subset, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
activity_summary <- summarise_each(group_by(combo.subset, activity), funs(mean))

# Store the tity file
write.table(activity_summary, file = "./tidy_set.txt", row.name = FALSE)
