# Cleaning_data_course_project

Tidy Data Set Preparation
=================

Project represents preparing tidy data set from Human Activity Recognition Using Smartphones Dataset. 

Source DataSet and its description can be found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##Tidy Data sets prepared:

- 'tidy_data/tidy_set.csv': Each row represents an observation window with labeled activity and subject. Each row includes mean and standard deviations for each measurement from a source dataset. 

- 'tidy_data/activity_subject_mean.csv': Each row represents measurement average value for each activity of each subject

Features descriptions can be found at 'CodeBook.txt'

##Preparation process

Preparation script can be found at 'run_analisys.R' with appropriate comments.


Following preparation process was perormed:
 
 1) load_data function called for Test and Train data sets of source data.
 This function provides:
  
    - loads source to data.table from source files using fread function
    - Red and assign appropriete features names from source features.txt 
    - remove duplicated columns presented in source data.
    - adds subject column with subject ID
    - adds activity_id column for each observation
    - returnes dplyr data.table
  
  2) Bind rows of Test and Train data.frames 
  
  3) Select Columns containing mean and sd data for each feature present
  
  4) Replace acitivity numeric column with a descriptive data for each activity
  
  5) Prepare a activity_subject_mean data set with measurements mean values for each activity of each subject
  
  6) write prepared data sets into csv files
  

    
