Getting and Cleaning Data: Course Project
=========================================

This repository contains:
  1.  README.md which describes how the file tidydata.txt was created using run_analysis.R
  2.  Codebook.md which describes the contents of the file tidydata.txt
  3.  run.analysis.R which contains the code to get and clean the data required to create tidydata.txt
  
After using my browser(Safari) to download and unzip the source zipfile 

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

into my work directory, the steps in the R script begin.

1.  The required source files were read into R creating a dataframe for each file
      a.  all 3 files from the test directory
      b.  all 3 files from the train directory
      c.  the activity_labels.txt file from the UCI HAR Dataset directory
      d.  the features.txt file from the UCI HAR Dataset directory

2.  The make.names function was applied to column 2 of the features dataframe to make all values into valid column headings and store the result in the character vector names.
3.  The result of step 2. was used to add descriptive column headings to the xTest and xTrain dataframes.  The column heading "activity" was added to the yTest and yTrain dataframes.  The column heading "subject" was added to the subject dataframes.
4.  Columns containing mean and standard deviation data were selected from the xTest and xTrain dataframes.
5.  The dataframes containing subject, activity, mean and standard deviation data were combined into one dataframe for each of the test and train dataframes.  Then an rbind was used to join the resulting 2 dataframes into one dataframe called testtrain_Data.
6.  The "activity" column in testtrain_Data contains values 1-6 which correspond to the 6 rows in the activityLabels dataframe. The second column in activityLabels contains the description which was used to replace the integer value in testtrain_Data.
7.  A new dataframe was then created using the group_by and summarise_each functions to create the averages of all the mean and standard deviations grouped by subject and activity.
8.  Finally, the dataframe created in step 7. is written to my work directory as "tidydata.txt"
