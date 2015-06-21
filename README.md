# getandcleanData
Project for Getting and Cleaning Data

run_Analysis Program

Lines 1-7 of Program: Read into the system the X_text, X_train, y_test, y_train, subject files, and activity labels 

Line 8 Adds the Activity column to the training set of y_train.  Activity examined by comparing current value in y_train against the value listed in the activity file

Line 9 performs the same task but for y_test

Line 10-11 Adds the column names to x_train and x_test from the features files, via converting the data in features into characters from factors

Line 12-13 Binds y_train file with the Activity Column with the subject data, and then renames the subject column

Line 14-15 performs the same for the y_test file

Line 16-17 Cbind the file with Activity and subject to x_test file with the corrected columns

Line 18-19 Cbind the file with Activity and subject to x_train file with the corrected columns

Line 20 merges the train and test sets together via rbind

Line 21-22 Adjusts the column names to allow for selection via select

Line 23 Selects only the columns required by the project

Line 24 groups the new tidy data by Subject, and then by Activity

Line 25 then summarises the data to obtain the mean of each column.

Line 26 then writes the new summarization to a new file.