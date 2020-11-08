# Read raw data.
activities <- read.table('./UCI_HAR_Dataset/activity_labels.txt')
features <- read.table('./UCI_HAR_Dataset/features.txt')
subject_test <- read.table('./UCI_HAR_Dataset/test/subject_test.txt')
X_test <- read.table('./UCI_HAR_Dataset/test/X_test.txt')
Y_test <- read.table('./UCI_HAR_Dataset/test/Y_test.txt')
subject_train <- read.table('./UCI_HAR_Dataset/train/subject_train.txt')
X_train <- read.table('./UCI_HAR_Dataset/train/X_train.txt')
Y_train <- read.table('./UCI_HAR_Dataset/train/Y_train.txt')


# Extract only the measurements on the mean and standard deviation.
selected <- grep('mean|std', features$V2)
features <- features[selected, ]
X_test <- X_test[, selected]
X_train <- X_train[, selected]


# Merge the training and the test sets to create one data set.
selectedData <- cbind(rbind(Y_test, Y_train), rbind(subject_test, subject_train), rbind(X_test, X_train))


# Appropriately label the data set with descriptive variable names.
colnames(selectedData)[1] <- 'activity'
colnames(selectedData)[2] <- 'subject'
colnames(selectedData)[3:ncol(selectedData)] <- features$V2


# Create a second data set with the average of each variable for each activity and each subject.
groups <- split(selectedData,list(selectedData$subject, selectedData$activity))
averageData <- sapply(groups, colMeans)
averageData <- data.frame(t(averageData))


# Use descriptive activity names to name the activities in the data set.
selectedData$activity <- activities$V2[selectedData$activity]
averageData$activity <- activities$V2[averageData$activity]


# Save output data.
write.table(averageData, './tidyAverageData.txt', row.name=FALSE)