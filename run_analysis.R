## You should create one R script called run_analysis.R that does the following. 
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement. 
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names. 
## From the data set in step 4, creates a second, independent tidy data set with the average 
##   of each variable for each activity and each subject.

## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Clean the workspace
rm(list=ls())

## load dplyr



file <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCIHARDataset.zip"
folderName = "./UCI HAR Dataset"

download.file(file, zipFile, "curl")
unzip(zipFile, overwrite = TRUE)

features <- read.table(paste(folderName, "features.txt", sep=.Platform$file.sep), header=FALSE)
activity_labels <- read.table(paste(folderName, "activity_labels.txt", sep=.Platform$file.sep), header=FALSE)
colnames(activity_labels) <- c("ActivityId", "Activity")

## read train data
subject_train <- read.table(paste(folderName, "train", "subject_train.txt", sep=.Platform$file.sep), header=FALSE)
x_train <- read.table(paste(folderName, "train", "x_train.txt", sep=.Platform$file.sep), header=FALSE)
y_train <- read.table(paste(folderName, "train", "y_train.txt", sep=.Platform$file.sep), header=FALSE)

## read test data
subject_test <- read.table(paste(folderName, "test", "subject_test.txt", sep=.Platform$file.sep), header=FALSE)
x_test <- read.table(paste(folderName, "test", "x_test.txt", sep=.Platform$file.sep), header=FALSE)
y_test <- read.table(paste(folderName, "test", "y_test.txt", sep=.Platform$file.sep), header=FALSE)

## Merge Data
## 1. Merges the training and the test sets to create one data set.
subjects <- rbind(subject_train, subject_test)
colnames(subjects) <- c("SubjectId")

x <- rbind(x_train, x_test)
colnames(x) <- features[,2]
x <- lapply(x, as.numeric)

y <- rbind(y_train, y_test)
colnames(y) <- c("ActivityId")

data <- cbind(subjects, y, x)

columnNames <- colnames(data)
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
 columnSelector <- (grepl("SubjectId",columnNames) | 
                      grepl("ActivityId",columnNames) | 
                      grepl("mean",columnNames) |
                      grepl("std",columnNames) );
                      

meanStdData <- data[columnSelector==TRUE]

## 3. Uses descriptive activity names to name the activities in the data set
require(dplyr)
meanStdData <- merge(x  = meanStdData, y = activity_labels, by = "ActivityId", all.x=TRUE)
## drop the ActivityId column
meanStdData <- dplyr::select(meanStdData, -ActivityId)

## 4. Appropriately labels the data set with descriptive variable names.
names(meanStdData) <- gsub('\\C\\)', "", names(meanStdData), perl = TRUE)
names(meanStdData) <- gsub('Freq', "Frequency", names(meanStdData) )
names(meanStdData) <- gsub('Freq$', "Frequency", names(meanStdData) )
names(meanStdData) <- gsub('Acc', "Acceleration", names(meanStdData) )
names(meanStdData) <- gsub('Gyro', "Gyroscope", names(meanStdData) )                          
names(meanStdData) <- gsub('Mag', "Magnitude", names(meanStdData) )
names(meanStdData) <- gsub('mean', "Mean", names(meanStdData) )
names(meanStdData) <- gsub('std', "StandardDeviation", names(meanStdData) )
names(meanStdData) <- gsub('BodyBody', "Body", names(meanStdData) )
names(meanStdData) <- gsub('^t', "TimeDomain", names(meanStdData) )
names(meanStdData) <- gsub('^f', "FrequencyDomain", names(meanStdData) )
names(meanStdData) <- gsub('-', "", names(meanStdData))

## 5. From the data set in step 4, creates a second, independent tidy data set with the average 
##   of each variable for each activity and each subject.

tidyData <- group_by(meanStdData, SubjectId, Activity) %>% summarise_each(funs(mean))
write.table(tidyData, "./tidy_data.txt", row.names=FALSE, quote = FALSE)

