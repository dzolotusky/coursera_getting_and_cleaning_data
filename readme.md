## Project for Coursera "Getting and Cleaning Data"

This is a repository with code for the project for [Getting and Cleaning Data](https://www.coursera.org/course/getdata).

The assignment is [here] (https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project). It was to read data from the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), and create an R script taht does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

**To run my R script, do the following:**

1. Download the data [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Extract the data from the .zip file.
3. Place the r script [run_analysis.R](run_analysis.R) into the unzipped directory.

**After that, you can run the R script ([run_analysis.R](run_analysis.R))**

**Also, note that the r script requires the plyr library. It can be downloaded and installed by running: install.packages("plyr")**

**Once run, the R script creates a tidy data set, [tidy.txt](tidy.txt).**

More details can be found in the [code book](CodeBook.md).