---
title: "CodeBook"
output: html_document
---

First Column: Subject, which refers to the number for each of the participating individuals.  30 total.  Data originally from subject_train file.

2nd Column: Activity:  Generated through mutate function from the y_train or y_test files and the activity_labels file.  y_train or y_test gave a number to describe which activity was occuring, and this was then compared to the key provided in the activity_labels file.  The column was then generated from this comparison. The activities are as follows:
* Laying
* Sitting
* Standing
* Walking
* Walking downstairs
* Walking Upstairs



Following columns after activity are all the means or standard deviation (std) for data collected in the X, Y, and Z directions. The following observations are performed:
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

With each measurement being observed in the X, Y, and Z directions.