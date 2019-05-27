
## Step 1: Read in required datasets.

xtrain  <- read.table(file = "./UCI HAR Dataset/train/X_train.txt", sep = "")
xtest   <- read.table(file = "./UCI HAR Dataset/test/X_test.txt", sep = "")
ytrain  <- read.table(file = "./UCI HAR Dataset/train/y_train.txt", sep = "")
ytest   <- read.table(file = "./UCI HAR Dataset/test/y_test.txt", sep = "")

subjecttrain  <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt", sep = "")
subjecttest   <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt", sep = "")


alabels   <- read.table(file = "./UCI HAR Dataset/activity_labels.txt", sep = "")
features  <- read.table(file = "./UCI HAR Dataset/features.txt", sep = "")

## Step 2: Merge training and test datasets.

x <- rbind(xtrain, xtest)
y <- rbind(ytrain, ytest)

subject <- rbind(subjecttrain, subjecttest)

## Step 3: Apply names, combine datasets, select columns of interest.

names(x) <- features$V2

y_merge <- merge(y, alabels, by.x = "V1", by.y = "V1")
names(y_merge) <- c("activity_id", "activity")

x_select <- x[,grepl("mean()", names(x), fixed = TRUE) | grepl("std()", names(x), fixed = TRUE)]

subjectyx <- cbind(subject, y_merge$activity, x_select)

names(subjectyx) <- c("subject", "activity", names(x_select))

## Step 4: Subject * activity means for each variable.

library(dplyr)

tbl_subjectyx <- tbl_df(subjectyx)
tbl_subjectyx <- group_by(tbl_subjectyx, subject, activity)
subjectyx_means <- summarize_all(tbl_subjectyx, funs(mean))

write.table(subjectyx_means, file = "subjectyx_means.txt", row.names = FALSE)


