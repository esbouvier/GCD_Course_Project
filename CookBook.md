#Getting and Cleaning Data Course Project
#Code Book for the reshaped HAR Using Smartphones Data Set

## Overview
The tidyData.txt is the output of the `run_analysis()` function which processed the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), to get a tidy data set with the average of each variable for each activity and each subject.

We followed the following Tidy Data principles (see the [Hadley Wickham's paper](http://vita.had.co.nz/papers/tidy-data.pdf)):
* Each variable forms a column.
* Each observation forms a row.
* Each type of observational unit forms a table.

This tidy data set includes:
* 66 variables (68 columns, including hte 2 keys/IDs columns)
* 35 observations (35 rows, excluding the header)

## Data Dictionary
The data dictionary provides the name of the field, its size, its description and possible values.  
**Note:**
- This data dictionary was inspired from [PUMSDataDict](https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf) which was provided for Quiz 1.*

**subjectID**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2  
The subject identifier taken from the subject_test.txt and subject_train.txt files. 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1..30 .The subject identifier.		
**activityLabel**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The activity label, the activity ID was taken from the y_test.txt and y_train.txt files and then matched against the data in activity_labels.txt to derive the label. 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;One of the following values:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING\_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WALKING\_DOWNSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;LAYING

**tBodyAccMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAcc-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAcc-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAcc-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAcc-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAcc-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAcc-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerk-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerk-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerk-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyro-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyro-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyro-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerk-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerk-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerk-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAccMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerkMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerkMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAcc-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAcc-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAcc-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccJerkMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccJerk-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccJerkMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccJerk-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccJerkMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccJerk-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyGyroMeanXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyGyro-mean()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyGyroMeanYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyGyro-mean()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyGyroMeanZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyGyro-mean()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyBodyAccJerkMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyBodyAccJerkMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyBodyGyroMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyBodyGyroMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyBodyGyroJerkMagMeanAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyBodyGyroJerkMag-mean() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAcc-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAcc-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAcc-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAcc-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAcc-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAcc-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerk-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerk-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerk-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyro-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyro-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyro-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerk-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerk-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerk-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tGravityAccMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tGravityAccMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyAccJerkMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyAccJerkMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**tBodyGyroJerkMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of tBodyGyroJerkMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAcc-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAcc-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAcc-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccJerkStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccJerk-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccJerkStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccJerk-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccJerkStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccJerk-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyGyroStdXAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyGyro-std()-X for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyGyroStdYAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyGyro-std()-Y for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyGyroStdZAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyGyro-std()-Z for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyAccMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyAccMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyBodyAccJerkMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyBodyAccJerkMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyBodyGyroMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyBodyGyroMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

**fBodyBodyGyroJerkMagStdAverage**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;18  
The average of fBodyBodyGyroJerkMag-std() for each activity and each subject.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Numeric value.  

## Variables
The variables in the Tidy Data are averages, for each activity and each subject, of the variables provided in the original data set.
For instance, **tBodyAccMeanXAverage** is the average of **tBodyAcc-mean()-X** for each activity and each subject.

You can find below the details of the variables in the original dataset as explained in the supplied features_info.txt:
	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

	Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

	Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

	These signals were used to estimate variables of the feature vector for each pattern:  
	'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

	tBodyAcc-XYZ
	tGravityAcc-XYZ
	tBodyAccJerk-XYZ
	tBodyGyro-XYZ
	tBodyGyroJerk-XYZ
	tBodyAccMag
	tGravityAccMag
	tBodyAccJerkMag
	tBodyGyroMag
	tBodyGyroJerkMag
	fBodyAcc-XYZ
	fBodyAccJerk-XYZ
	fBodyGyro-XYZ
	fBodyAccMag
	fBodyAccJerkMag
	fBodyGyroMag
	fBodyGyroJerkMag

	The set of variables that were estimated from these signals are: 

	mean(): Mean value
	std(): Standard deviation
	mad(): Median absolute deviation 
	max(): Largest value in array
	min(): Smallest value in array
	sma(): Signal magnitude area
	energy(): Energy measure. Sum of the squares divided by the number of values. 
	iqr(): Interquartile range 
	entropy(): Signal entropy
	arCoeff(): Autorregresion coefficients with Burg order equal to 4
	correlation(): correlation coefficient between two signals
	maxInds(): index of the frequency component with largest magnitude
	meanFreq(): Weighted average of the frequency components to obtain a mean frequency
	skewness(): skewness of the frequency domain signal 
	kurtosis(): kurtosis of the frequency domain signal 
	bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
	angle(): Angle between to vectors.

	Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

	gravityMean
	tBodyAccMean
	tBodyAccJerkMean
	tBodyGyroMean
	tBodyGyroJerkMean

	The complete list of variables of each feature vector is available in 'features.txt'

## Reshaping/Transformation
See [README.md](README.md) for information about running the script for this transformation.  

The Tidy Data is the result of the following transformations:
1. The features data are loaded from features.txt and the column names are set to "id" and "label".
2. The activity labels are loaded from activity_labels.txt and the column names are set to "activityID" and "activityLabel".
3. The subject identifiers are loaded from the subject_test.txt and subject_train.txt files and bound (row binding) together in one data set. The column name is set to "subjectID".
4. The measurements data in the x_test.txt and x_train.txt files are bound together (row binding).
5. To make them meaningful, the column names of the "x" dataset are set using the the data in the features.txt file (the 1st value of the 2nd column of the features data correspond to the name of the 1st column of the "x" data etc.). The names are also cleaned up, see below for more details.
6. Our analysis has only the mean and standard deviations measurements. We discard all the columns of the "x" dataset that do not have "-mean()" or "-std()" in their names.
6. The activity identifier corresponding to the measurements in the "x" files and present in the y_test.txt and y_train.txt, are bound together (row binding) to form one dataset. The column name is set to "activityID".
7. The activities ID present in the "y" dataset are looked up in the "activiy labels" dataset and the matched labels are added to the "y" dataset in a new column named "activityLabel".
8. The "subject", "y" and "x" datasets are then column bound so that we end up with a new data frame with columns in a particular order, this being: "subjectID", "activityID", "activityLabel", followed by all the variable columns from the "x" dataset.
9. To calulate the average of each variable for each activity and each subject, we melt our data frame to get narrow data of the measurements for subjects (`melt` function included in the `reshape2` package) and activities and cast the molten data to calculate the average of each variable for each activity and subject. The resulting data frame, which is our Tidy Data, consists of the following columns: subject ID, activity name, followed by one column for each of the averaged variable.
10. As the resulting dataset includes the average of the variables, we postfix the variables column names with "Average".
11. Finally, the dataset is output to file in table format excluding the row names.  

The column names of the "x" data (measurements data) are derived from the data in the features.txt file and cleaned up to make them syntactically valid, to ensure they are unique column names and to remove redundant "." separators. The transformation is as follows:
1. The names are made syntactically correct (i.e. removing special characters such as '(' and ')', etc. - see `?make.names` for more information). We also make sure they names are unique by setting the `unique` parameter of `make.names` to true.
2. ".mean." is replaced by "Mean".
3. ".std." is replaced by "Std".
4. All remaining dots are removed.

