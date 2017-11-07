# load the plyr library, used in step 3 for mapvalues
library(plyr)

# 1: Merges the training and the test sets to create one data set.

# load test data
x_test <- read.table(file="./test/X_test.txt")
y_test <- read.table(file="./test/y_test.txt")

# load training data
x_train <- read.table(file="./train/X_train.txt")
y_train <- read.table(file="./train/y_train.txt")

# lead subject ids
subject_test = read.table(file="./test/subject_test.txt")
subject_train = read.table(file="./train/subject_train.txt")

# add column label to the subject id data
names(subject_test) = "SubjectId"
names(subject_train) = "SubjectId"

# add column label to the activity data (Y)
names(y_test) = "Activity"
names(y_train) = "Activity"

# add column labels to all features, reading the names from features.txt
featureLabels <- read.table("./features.txt")
names(x_test) <- featureLabels$V2
names(x_train) <- featureLabels$V2

# combine test and train data into one data set
full_test <- cbind(subject_test, x_test, y_test)
full_train <- cbind(subject_train, x_train, y_train)
combined_data <- rbind(full_test, full_train)

# 2: Extracts only the measurements on the mean and standard deviation for each measurement

# find columns with mean or standard devition
mean_cols <- grepl("-mean\\(", names(combined_data))
std_cols <- grepl("-std\\(", names(combined_data))

# combine those two lists of columns
needed_cols <- mean_cols | std_cols

# also include subject id columnd
needed_cols[1] <- TRUE

# include activity label column
needed_cols[ncol(combined_data)] <- TRUE

# create a data set with only mean, std, actvity, and subject id
combined_mean_std = combined_data[needed_cols]

# 3: Uses descriptive activity names to name the activities in the data set

# use plyr's mapvalues to map the integers to string activity names
combined_mean_std$Activity <- plyr::mapvalues(combined_mean_std$Activity,
                     from = c(1, 2, 3, 4, 5, 6),
                     to = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))

# 4: Appropriately labels the data set with descriptive variable names.
# This is already done above where the labels are set on columns

# 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
write.table(combined_mean_std, "tidy.txt", row.names=FALSE)