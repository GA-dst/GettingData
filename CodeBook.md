Getting and Cleaning Data Course Project: Code Book
===================================================

##Source Data

The source of the data used to create the file resulting from this project is: 
            https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
            
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

1. mean(): Mean value
2. std(): Standard deviation
3. mad(): Median absolute deviation
4. max(): Largest value in array
5. min(): Smallest value in array
6. sma(): Signal magnitude area
7. energy(): Energy measure. Sum of the squares divided by the number of values. 
8. iqr(): Interquartile range 
9. entropy(): Signal entropy
10. arCoeff(): Autorregresion coefficients with Burg order equal to 4
11. correlation(): correlation coefficient between two signals
12. maxInds(): index of the frequency component with largest magnitude
13. meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14. skewness(): skewness of the frequency domain signal 
15. kurtosis(): kurtosis of the frequency domain signal 
16. bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17. angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

1. gravityMean
2. tBodyAccMean
3. tBodyAccJerkMean
4. tBodyGyroMean
5. tBodyGyroJerkMean

##Intermediate Data

The mean and standard deviation variables for each of the signals were selected from the source data and combined with the subject and activity being observed, resulting in 68 variables

##Output Data

The final output data contains the averages of the variables in the intermediate data, grouped by subject and activity. There are 30 subjects and 6 activities resulting in 180 rows of 68 variables.

###Variables


1. subject - integer(1-30) designating which of the 30 subjects the observations apply to
2. activity - character(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) describing which of the activities the observations apply to.
 
The following variables are the averages of the mean and standard deviations of the measurements described in Source Data above

'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

3. tBodyAcc.mean.XYZ
4. tGravityAcc.mean.XYZ
5. tBodyAccJerk.mean.XYZ
6. tBodyGyro.mean.XYZ
7. tBodyGyroJerk.mean.XYZ
8. tBodyAccMag.mean
9. tGravityAccMag.mean
10. tBodyAccJerkMag.mean
11. tBodyGyroMag.mean
12. tBodyGyroJerkMag.mean
13. fBodyAcc.mean.XYZ
14. fBodyAccJerk.mean.XYZ
15. fBodyGyro.mean.XYZ
16. fBodyAccMag.mean
17. fBodyAccJerkMag.mean
18. fBodyGyroMag.mean
19. fBodyGyroJerkMag.mean
20. tBodyAcc.std.XYZ
21. tGravityAcc.std.XYZ
22. tBodyAccJerk.std.XYZ
23. tBodyGyro.std.XYZ
24. tBodyGyroJerk.std.XYZ
25. tBodyAccMag.std
26. tGravityAccMag.std
27. tBodyAccJerkMag.std
28. tBodyGyroMag.std
29. tBodyGyroJerkMag.std
30. fBodyAcc.std.XYZ
31. fBodyAccJerk.std.XYZ
32. fBodyGyro.std.XYZ
33. fBodyAccMag.std
34. fBodyAccJerkMag.std
35. fBodyGyroMag.std
36. fBodyGyroJerkMag.std



