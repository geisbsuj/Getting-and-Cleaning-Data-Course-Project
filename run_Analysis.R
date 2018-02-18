

#load needed packages
library('dplyr')

fileUrl<- ("http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip")

#download the file, unzip and gain knowledge about the files in the folder
download.file(fileUrl, "UCI HAR Dataset.zip")
unzip(zipfile="./UCI HAR Dataset.zip",exdir="./data")
pathdata <- file.path("./data", "UCI HAR Dataset")
files <- list.files(pathdata, recursive = TRUE)
files

#reading training data 
x_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("./data/UCI HAR Dataset/train/Y_train.txt", header = FALSE)
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)

# read testing data
x_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("./data/UCI HAR Dataset/test/Y_test.txt", header = FALSE)
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)

# read data (features.txt) description | read activity labels
variable_names <- read.table("./data/UCI HAR Dataset/features.txt", header = FALSE)
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)


# Merges the training and the test data frames to create one data set for the respective samples.(1. goal on Coursera)
x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
subject_total <- rbind(subject_train, subject_test)

# Extracts only the measurements on the mean and standard deviation for each measurement (2.goal on Coursera).
selected_var <- variable_names[grep("mean\\(\\)|std\\(\\)",variable_names[,2]),]
x_total <- x_total[,selected_var[,1]]

# Use descriptive activity names to name the activities in the data set (3. goal on Coursera).
colnames(y_total) <- "activity"
y_total$activity_label <- factor(y_total$activity, labels = as.character(activity_labels[,2]))
activity_label <- y_total[,3]

# Appropriately lable the data set with descriptive variable names (4. goal on Coursera).
colnames(x_total) <- variable_names[selected_var[,1],2]

# From the data set in step 4, create a second, independent tidy data set with the average
# of each variable for each activity and each subject. (5. goal on Coursera).
colnames(subject_total) <- "subject"
total <- cbind(x_total, activity_label, subject_total)
total_mean <- total %>% group_by(activity_label, subject) %>% summarize_all(funs(mean))
write.table(total_mean, file = "./data/UCI HAR Dataset/tidydata.txt", row.names = FALSE, col.names = TRUE)