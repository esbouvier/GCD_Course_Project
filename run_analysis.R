## Getting and Cleaning Data
## Course Project - Week 3 - Nov 2014
library(reshape2)

# Download and unzip data
getActivityData <- function() {
    # Download activity dataset and unzip it
    zipFileName <- "activityDataset.zip"
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile=zipFileName,
                  method="curl")
    unzip(zipFileName)
}

# Core function to perform reshaping of the Samsung activity tracking data and to produce a tidy
# data set. 
# Parameters:
#   dataRootPath: the location of the Samsung activity traking data. Default to "UCI HAR Dataset"
# Returns:
#   This function will be output in tidyData.txt in table format.
run_analysis <- function(dataRootPath = "UCI\ HAR\ Dataset") {

    testDatasetPath <- paste(dataRootPath, "test", sep="/")
    
    # Load features data
    features <- read.table(paste(dataRootPath, "features.txt", sep="/"))
    colnames(features) <- c("id", "label")
    
    # Load activity_labels data
    activityLabels <- read.table(paste(dataRootPath, "activity_labels.txt", sep="/"))
    colnames(activityLabels) <- c("activityID", "activityLabel")
    
    # Bind the "subject" test and training data files 
    all.subject <- bindTestAndTrainFiles(paste(testDatasetPath, "subject_test.txt", sep="/"))
    colnames(all.subject) <- "subjectID"
    
    # Bind the "x" test and training data files 
    all.x <- bindTestAndTrainFiles(paste(testDatasetPath, "x_test.txt", sep="/"))
    
    # Use the features data to set "meaningful" names to the all.x columns
    colnames(all.x) <- as.vector(cleanUpNames(features[,2]))

    # We are only interested by the mean and standard deviation for each measurement,
    # get a vector for the columns that have -mean() or -std() in their name
    colnamesOfInterest <- c(grep("-mean\\(\\)", features$label), grep("-std\\(\\)", features$label))
    
    # Only keep those columns
    all.x <- all.x[, colnamesOfInterest]
    
    # Bind the "y" test and training data files 
    all.y <- bindTestAndTrainFiles(paste(testDatasetPath, "y_test.txt", sep="/"))
    colnames(all.y) <- "activityID"
    
    # Add a new column to all.y with the activity name
    all.y <- merge(all.y, activityLabels, by.x="activityID", by.y="activityID")
    
    # Combine data together, putting subject and feature IDs in front of the features
    # columns
    df <- cbind(all.subject, all.y, all.x)
    
    # Persist tidy dataset to file (project instructions are unclear on whether 
    # this file is required or not)
    write.table(df, "TidyData_intermediate.txt", row.names=FALSE)
    
    # Melt data so that we can calculate the mean for each variable
    melted <- melt(df, id=c("subjectID", "activityID", "activityLabel"))
    
    # Calculate the mean for each using dcast. This will put the measures back into
    # columns
    tidyDataSet <- dcast(melted, subjectID + activityLabel ~ variable, mean)
    
    # Add "Average" at the end of the variable names
    colnames(tidyDataSet)[3:ncol(tidyDataSet)]<-paste(colnames(tidyDataSet)[3:ncol(tidyDataSet)], 
                                                      "Average", sep="")
    
    # Persist tidy dataset to file
    write.table(tidyDataSet, "TidyData.txt", row.names=FALSE)
}

## Helpers

# Bind a file for the test dataset with its equivalent in the training set
# Parameters:
#   testFilePath -  the path of test file name that we want to bind with the equivalent
#                   one in the training dataset
# Returns:
#   A dataframe binding the test and training data
bindTestAndTrainFiles <- function(testFilePath) {
    trainFilePath <- gsub("test", "train", testFilePath)

    if (!(file.exists(trainFilePath))){
        stop(paste(trainFilePath, " does not exists."))
    }
    
    readAndBindFiles(testFilePath, trainFilePath)
}

# Bind the data of 2 files into one dataframe.
# Parameters:
#   paths of the 2 files to bind
# Return: bound dataframe
readAndBindFiles <- function(filePath1, filePath2) {
    df1 <- read.table(filePath1)
    df2 <- read.table(filePath2)
   
    # set the names of the 2nd data frame with those from the 1st data frame
    # to prevent rbind() from failing.
    names(df2) <- names(df1)

    rbind(df2, df1)
}

# Clean up column names
# Parameters:
#   x: columns factor
# Returns:
#   factor with cleaned up column names
cleanUpNames <- function(x) {
    # Make the names syntactically correct and unique
    x <- make.names(x, unique=TRUE)
    
    # .mean. becomes Mean, .std. becomes Std and removed all the remaining dots
    # The gsub calls are chained for performance reason (all done in one table scan)
    x <- gsub("\\.", "", 
              gsub("\\.mean\\.", "Mean",
                   gsub("\\.std\\.", "Std", x)))
}
