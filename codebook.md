Code book
This code book describes the data source, which has been used for the analysis, the variables, which can be found in the final data set file
called "course3project.txt", and the transformations, which have taken place in the "run_analysis.R" script.

Data source
Data for the project
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Full description of data set
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Variables

subject
Number identifying the subject being observed performing one of the activities below

act
Activity which the subject was performing while being observed:

walking
walkingupstairs
walkingdownstairs
sitting
standing
laying

Measurements / Variables
All measurements/variables which have been taken for each subject performing each activity

Notes on variable names:

mean and std indicate that only the mean and standard deviation are listed here. In the original data source, more measurements can be found
accelerometer and gyroscope signals are collected and accordingly mentioned in the variable name
x,y,z stand for the 3-axial signals
signals are separated into body and gravity
More details can be found in the features_info.txt file, which is part of the original ZIP file.

time_bodyaccelerometer-mean()-x
time_bodyaccelerometer-mean()-y
time_bodyaccelerometer-mean()-z
time_bodyaccelerometer-std()-x
time_bodyaccelerometer-std()-y
time_bodyaccelerometer-std()-z
time_gravityaccelerometer-mean()-x
time_gravityaccelerometer-mean()-y
time_gravityaccelerometer-mean()-z
time_gravityaccelerometer-std()-x
time_gravityaccelerometer-std()-y
time_gravityaccelerometer-std()-z
time_bodyaccelerometerjerk-mean()-x
time_bodyaccelerometerjerk-mean()-y
time_bodyaccelerometerjerk-mean()-z
time_bodyaccelerometerjerk-std()-x
time_bodyaccelerometerjerk-std()-y
time_bodyaccelerometerjerk-std()-z
time_bodygyroscope-mean()-x
time_bodygyroscope-mean()-y
time_bodygyroscope-mean()-z
time_bodygyroscope-std()-x
time_bodygyroscope-std()-y
time_bodygyroscope-std()-z
time_bodygyroscopejerk-mean()-x
time_bodygyroscopejerk-mean()-y
time_bodygyroscopejerk-mean()-z
time_bodygyroscopejerk-std()-x
time_bodygyroscopejerk-std()-y
time_bodygyroscopejerk-std()-z
time_bodyaccelerometermagnitude-mean()
time_bodyaccelerometermagnitude-std()
time_gravityaccelerometermagnitude-mean()
time_gravityaccelerometermagnitude-std()
time_bodyaccelerometerjerkmagnitude-mean()
time_bodyaccelerometerjerkmagnitude-std()
time_bodygyroscopemagnitude-mean()
time_bodygyroscopemagnitude-std()
time_bodygyroscopejerkmagnitude-mean()
time_bodygyroscopejerkmagnitude-std()
frequency_bodyaccelerometer-mean()-x
frequency_bodyaccelerometer-mean()-y
frequency_bodyaccelerometer-mean()-z
frequency_bodyaccelerometer-std()-x
frequency_bodyaccelerometer-std()-y
frequency_bodyaccelerometer-std()-z
frequency_bodyaccelerometerjerk-mean()-x
frequency_bodyaccelerometerjerk-mean()-y
frequency_bodyaccelerometerjerk-mean()-z
frequency_bodyaccelerometerjerk-std()-x
frequency_bodyaccelerometerjerk-std()-y
frequency_bodyaccelerometerjerk-std()-z
frequency_bodygyroscope-mean()-x
frequency_bodygyroscope-mean()-y
frequency_bodygyroscope-mean()-z
frequency_bodygyroscope-std()-x
frequency_bodygyroscope-std()-y
frequency_bodygyroscope-std()-z
frequency_bodyaccelerometermagnitude-mean()
frequency_bodyaccelerometermagnitude-std()
frequency_bodyaccelerometerjerkmagnitude-mean()
frequency_bodyaccelerometerjerkmagnitude-std()
frequency_bodygyroscopemagnitude-mean()
frequency_bodygyroscopemagnitude-std()
frequency_bodygyroscopejerkmagnitude-mean()
frequency_bodygyroscopejerkmagnitude-std()
Transformation
The script "run_analyis.R" takes care of the following steps:

Merge the training and the test sets to create one data set.
Extract only the measurements on the mean and standard deviation for each measurement.
Use descriptive activity names to name the activities in the data set
Appropriately label the data set with descriptive variable names.
From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
The outcome of step 5 is the saved to the working directory as "course3project.txt".
