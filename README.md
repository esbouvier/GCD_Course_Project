# Getting and Cleaning Data Course Project
This repository has been created as part of the Course Project for the [Getting and Cleaning Data Course on Coursera](https://class.coursera.org/getdata-009) module.

# Project Overview
As per the Course Project instructions:
> The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

> One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

> [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

> Here are the data for the project: 

> [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

>  You should create one R script called run_analysis.R that does the following.  
> 1. Merges the training and the test sets to create one data set.  
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.  
> 3. Uses descriptive activity names to name the activities in the data set.  
> 4. Appropriately labels the data set with descriptive variable names.  
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
 

# Repository
This repository contains the following files:
* README.md, this file.
* [run_analysis.R](run_analysis.R), the R script with all the code required to produce the artifacts of this project.
* [CodeBook.md](CodeBook.md), the Code Book for the [TidyData.txt](TidyData.txt).
* [TidyData.txt](TidyData.txt), the tidy data set produced by step 5 of the project i.e the tidy data set with the average of each variable for each activity and each subject.
* [TidyData_intermediate.txt](TidyData_intermediate.txt), the tidy data set produced by step 4 of the project i.e the tidy data set with all the mean and standard deviations measurements for all the subjects and activities. *The instructions are not clear whether this is required or not. This file has been included for completness.*

# Analysis Overview
The above projects steps provide a high level overview of the analysis.  
More detailed information about this analysis can be found in the "Reshaping/Transformation" section of the [CodeBook.md](CodeBook.md) file.

Comments in the [run_analysis.R](run_analysis.R) file shows the steps for this analysis and provide technical details.

# Running the Analysis
This section explains the steps required to run the analysis and get the tidy data sets.

## Getting the R script
You can fork and clone this repository to get all the files locally or, alternatively, simply download the [run_analysis.R](run_analysis.R) file and save it in your R working directory.

The script then needs to be sourced, in the R console, type:  
```r
source('run_analysis.R')
```

## Getting the data
The data should be downloaded to your R working directory. In the R console, type:
```r
getActivityData()
```
This will download the zip file and extract it to your working directory. The data files will be located under the "UCI HAR Dataset" folder.

## Running the analysis
In the R console, again, type:
```r
run_analysis()
```

In case you have extracted the data to a directory other than ""UCI HAR Dataset" (or decided to rename this directory), you can specify the data directory as a parameter:
```r
run_analysis("OtherDirectoryName")
```

## Checking the analysis output
Once `run_analysis` completes you should have the following files in your working directory:
* TidyData.txt
* TidyData_intermediate.txt

# Notes
- The R script has been created and tested on OSX 10.10 only.  
`sessionInfo()` gives the following output for that environment:   

```r
R version 3.1.2 (2014-10-31)
Platform: x86_64-apple-darwin13.4.0 (64-bit)

locale:  
[1] en_GB.UTF-8/en_GB.UTF-8/en_GB.UTF-8/C/en_GB.UTF-8/en_GB.UTF-8 
 
attached base packages:  
[1] stats     graphics  grDevices utils     datasets  methods  
[7] base       

other attached packages:  
[1] reshape2_1.4  

loaded via a namespace (and not attached):  
[1] plyr_1.8.1    Rcpp_0.11.3   stringr_0.6.2 tools_3.1.2
```
- The Markdown documents of this repository have been edity with [MacDown](http://macdown.uranusjr.com)

