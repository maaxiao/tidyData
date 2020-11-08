# Explanations
1. This code book contains the data dictionary for "tidyAverageData.txt".
2. The data set is transformed from some raw data about wearable computing.
    + 2.1. The raw data were downloaded from the following link: 'http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones'
    + 2.2. 30 volunteers (subjects) were asked to repeat 6 types of activities, while their motions were measured with a smart phone (Samsung Galaxy S II) on their waist. 
    + 2.3. Then the statistical variables (including mean, std, skewness, entropy, and so on) were estimated from the original raw data. 
    + 2.4. These information were divided into two groups as "test" and "train" data sets. 
    + 2.5. For more details about how the raw data were collected and processed, please refer to these two files attached with the raw data: "README.txt" and "features_info.txt". 
3. We further processed the raw data and produced an output: "tidyAverageData.txt".
    + 3.1. We extracted only those variables of mean and std.
    + 3.2. We combined the test and train data sets together.
    + 3.3. We put the activity names and subject IDs into the data tables.
    + 3.4. We renamed each measurement variable by its physical meaning.
    + 3.5. We averaged over the many repeated measurements for each subject and each activity.

    
# Dictionary for tidyAverageData.txt"
#### activity
    There are 6 types of activities.
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING
#### subject
    There are 30 subjects participating in this experiment.
        1 - 30
#### tBodyAcc.mean...X
#### tBodyAcc.mean...Y
#### tBodyAcc.mean...Z
#### tBodyAcc.std...X
#### tBodyAcc.std...Y
#### tBodyAcc.std...Z
#### tGravityAcc.mean...X
#### tGravityAcc.mean...Y
#### tGravityAcc.mean...Z
#### tGravityAcc.std...X
#### tGravityAcc.std...Y
#### tGravityAcc.std...Z
#### tBodyAccJerk.mean...X
#### tBodyAccJerk.mean...Y
#### tBodyAccJerk.mean...Z
#### tBodyAccJerk.std...X
#### tBodyAccJerk.std...Y
#### tBodyAccJerk.std...Z
#### tBodyGyro.mean...X
#### tBodyGyro.mean...Y
#### tBodyGyro.mean...Z
#### tBodyGyro.std...X
#### tBodyGyro.std...Y
#### tBodyGyro.std...Z
#### tBodyGyroJerk.mean...X
#### tBodyGyroJerk.mean...Y
#### tBodyGyroJerk.mean...Z
#### tBodyGyroJerk.std...X
#### tBodyGyroJerk.std...Y
#### tBodyGyroJerk.std...Z
#### tBodyAccMag.mean..
#### tBodyAccMag.std..
#### tGravityAccMag.mean..
#### tGravityAccMag.std..
#### tBodyAccJerkMag.mean..
#### tBodyAccJerkMag.std..
#### tBodyGyroMag.mean..
#### tBodyGyroMag.std..
#### tBodyGyroJerkMag.mean..
#### tBodyGyroJerkMag.std..
#### fBodyAcc.mean...X
#### fBodyAcc.mean...Y
#### fBodyAcc.mean...Z
#### fBodyAcc.std...X
#### fBodyAcc.std...Y
#### fBodyAcc.std...Z
#### fBodyAcc.meanFreq...X
#### fBodyAcc.meanFreq...Y
#### fBodyAcc.meanFreq...Z
#### fBodyAccJerk.mean...X
#### fBodyAccJerk.mean...Y
#### fBodyAccJerk.mean...Z
#### fBodyAccJerk.std...X
#### fBodyAccJerk.std...Y
#### fBodyAccJerk.std...Z
#### fBodyAccJerk.meanFreq...X
#### fBodyAccJerk.meanFreq...Y
#### fBodyAccJerk.meanFreq...Z
#### fBodyGyro.mean...X
#### fBodyGyro.mean...Y
#### fBodyGyro.mean...Z
#### fBodyGyro.std...X
#### fBodyGyro.std...Y
#### fBodyGyro.std...Z
#### fBodyGyro.meanFreq...X
#### fBodyGyro.meanFreq...Y
#### fBodyGyro.meanFreq...Z
#### fBodyAccMag.mean..
#### fBodyAccMag.std..
#### fBodyAccMag.meanFreq..
#### fBodyBodyAccJerkMag.mean..
#### fBodyBodyAccJerkMag.std..
#### fBodyBodyAccJerkMag.meanFreq..
#### fBodyBodyGyroMag.mean..
#### fBodyBodyGyroMag.std..
#### fBodyBodyGyroMag.meanFreq..
#### fBodyBodyGyroJerkMag.mean..
#### fBodyBodyGyroJerkMag.std..
#### fBodyBodyGyroJerkMag.meanFreq..