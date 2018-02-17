############################################################################################################
#Script does the following:
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.
############################################################################################################

#Download and unzip files
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile <- file.path(getwd(), "Dataset.zip")

download.file(fileUrl, destFile)
unzip(destFile)

#Get data into R

##Features and activities
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt")
features <- read.table("UCI HAR Dataset\\features.txt")

##Test files
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
x_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table("UCI HAR Dataset\\test\\y_test.txt")

##Train files
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
x_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table("UCI HAR Dataset\\train\\y_train.txt")

#Gradually merge data
##Merge Test and Train Sets
testTrainSets <- rbind(x_test, x_train)

##Merge activities
activitiesData <- rbind(y_test, y_train)

##Merge subjects
testTrainSubj <- rbind(subject_test, subject_train)

#Change variable names to more descriptive names
names(testTrainSets) <- features[, 2]
names(activitiesData) <- "activities"
names(testTrainSubj) <- "subject"

#Merge all data together
act_sub_data <- cbind(activitiesData, testTrainSubj)
data <- cbind(testTrainSets, act_sub_data)

#Get mean and std measurements
colIndx <- grep(".*mean.*|.*std.", features[,2])
features2 <- features[colIndx,]
required_column_names <- c(as.character(features2[,2]), "activities", "subject")  
allData <- subset(data, select = required_column_names)

#Use descriptive activity names to name the activities in the data set
allData$activities <- as.character(allData$activities)
activity_labels <- as.character(activity_labels[,2])

for (i in 1:length(allData$activities)){
    allData$activities[i] <- activity_labels[as.numeric(allData$activities[i])]
}

#Appropriately label the data set with descriptive variable names
names(allData) <- gsub("^t", "time", names(allData))
names(allData) <- gsub("^f", "frequency", names(allData))
names(allData) <- gsub("Acc", "Accelerometer", names(allData))
names(allData) <- gsub("Gyro", "Gyroscope", names(allData))
names(allData) <- gsub("Mag", "Magnitude", names(allData))
names(allData) <- gsub("BodyBody", "Body", names(allData))

#Create Independent tidy dataset with the average of each variable for each activity and each subject
tidyData <- aggregate(allData, by=list(activities = as.factor(allData$activities), subject=as.factor(allData$subject)), mean)
tidyData <- tidyData[,1:(ncol(tidyData)-2)]

write.table(tidyData, "tidy_data.txt", row.name=FALSE)


















