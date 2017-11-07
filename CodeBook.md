## Code Book

This code book explains the data that is used in this assignment and the work that the R script does to produce a tidy data set.

### Overview

The data was built from the recordings of 30 subjects performing 6 different activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

### Explanation of each file

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

`README.txt` contains more information about these files.
`features_info.txt` contains more information about the features.

### Data files that were not used

Any other files in the data were not used. This includes files about Inertial Signals.

### Processing steps in the R script

1. The data files are read into R data frames.
2. Column headers are added
3. Trainng and test data sets are combined into one data set
4. All columns without "mean(" or "std(" in the name are dropped
5. The data column with Activity is converted from integers to human readable strings for each activity
6. A tidy data set with the above data is output as a .txt file.