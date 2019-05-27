# Codebook

This repository contains the follwing two datasets that have been created from the UCI HAR Dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

* subjectyx
* subjectyx_means

Each dataset contains the following variables:

*  **subject** - an id to indicate the subject the data was collected from.
*  **activity** - a description of the activity the subject was performing when the data was collected.

Each of the follwing measures appear as a variable twice. Once for the mean of the measure and once for the standard deviation. 
Variable names are appended with mean() and std() to indicate which is which.

* tBodyAcc-XYZ 
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

For more information, please consult the original codebook and readme files of the dataset.
