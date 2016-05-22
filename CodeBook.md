Tidy Data Set CodeBook
=================

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


##Changes to original data set made by run_analysis.R

### Create additional files:
=========================================

- 'README.md'

- 'CodeBook.md'

- 'tidy_data/tidy_set.csv': Each row represents an observation window with labeled activity and subject. Each row includes mean and standard deviations for each measurement from a source dataset. 

- 'tidy_data/activity_subject_mean.csv': Each row represents measurement average value for each activity of each subject

- 'run_analysis.R': R-script file to prepare tidy datasets from a source data

=========================================
Additions Description
=========================================

tidy_data/tidy_set.csv

 -  "activity" - Labeled activity. "LAYING","SITTING","STANDING","WALKING","WALKING_DOWNSTAIRS","WALKING_UPSTAIRS"   

 -  "subject" - ID of subject performed an activity.

Mean and Standard Deviations for each measurement from source:
 -  "BodyAcc-mean-X"
 -  "BodyAcc-mean-Y"
 -  "BodyAcc-mean-Z"
 -  "BodyAcc-std-X"
 -  "BodyAcc-std-Y"
 -  "BodyAcc-std-Z"
 -  "GravityAcc-mean-X"
 -  "GravityAcc-mean-Y"
 -  "GravityAcc-mean-Z"
 -  "GravityAcc-std-X"
 -  "GravityAcc-std-Y"
 -  "GravityAcc-std-Z"
 -  "BodyAccJerk-mean-X"
 -  "BodyAccJerk-mean-Y"
 -  "BodyAccJerk-mean-Z"
 -  "BodyAccJerk-std-X"
 -  "BodyAccJerk-std-Y"
 -  "BodyAccJerk-std-Z"
 -  "BodyGyro-mean-X"
 -  "BodyGyro-mean-Y"
 -  "BodyGyro-mean-Z"
 -  "BodyGyro-std-X"
 -  "BodyGyro-std-Y"
 -  "BodyGyro-std-Z"
 -  "BodyGyroJerk-mean-X"
 -  "BodyGyroJerk-mean-Y"
 -  "BodyGyroJerk-mean-Z"
 -  "BodyGyroJerk-std-X"
 -  "BodyGyroJerk-std-Y"
 -  "BodyGyroJerk-std-Z"
 -  "BodyAccMag-mean"
 -  "BodyAccMag-std"
 -  "GravityAccMag-mean"
 -  "GravityAccMag-std"
 -  "BodyAccJerkMag-mean"
 -  "BodyAccJerkMag-std"
 -  "BodyGyroMag-mean"
 -  "BodyGyroMag-std"
 -  "BodyGyroJerkMag-mean"
 -  "BodyGyroJerkMag-std"
 -  "FurieBodyAcc-mean-X"
 -  "FurieBodyAcc-mean-Y"
 -  "FurieBodyAcc-mean-Z"
 -  "FurieBodyAcc-std-X"
 -  "FurieBodyAcc-std-Y"
 -  "FurieBodyAcc-std-Z"
 -  "FurieBodyAccJerk-mean-X"
 -  "FurieBodyAccJerk-mean-Y"
 -  "FurieBodyAccJerk-mean-Z"
 -  "FurieBodyAccJerk-std-X"
 -  "FurieBodyAccJerk-std-Y"
 -  "FurieBodyAccJerk-std-Z"
 -  "FurieBodyGyro-mean-X"
 -  "FurieBodyGyro-mean-Y"
 -  "FurieBodyGyro-mean-Z"
 -  "FurieBodyGyro-std-X"
 -  "FurieBodyGyro-std-Y"
 -  "FurieBodyGyro-std-Z"
 -  "FurieBodyAccMag-mean"
 -  "FurieBodyAccMag-std"
 -  "FurieBodyBodyAccJerkMag-mean"
 -  "FurieBodyBodyAccJerkMag-std"
 -  "FurieBodyBodyGyroMag-mean"
 -  "FurieBodyBodyGyroMag-std"
 -  "FurieBodyBodyGyroJerkMag-mean"
 -  "FurieBodyBodyGyroJerkMag-std"