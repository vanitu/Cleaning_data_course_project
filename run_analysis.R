library(dplyr)
library(tidyr)
library(data.table)

# FUNCTION Loads data in a Data.Table
# Adding features names from feature_source
# Adding subject columt from subject_source
# Adding activity coulmn from activity source

load_data<-function(features_names='',data_source='',subject_source='',activity_source=''){
  #Load feature names of the data set
  features<-tbl_df(fread(features_names, sep=' ',col.names=c('id','feature_name')))
  
  ##Load measurements data
  df=tbl_df(fread(data_source,sep=' '))
  
  ##Add Features names to data
  names(df)<-features$feature_name
  
  ##Remove duplicated features
  df<-df[,!duplicated(names(df))]
  
  ##Add subject column
  subject_data<-fread(subject_source,col.names = 'subject')
  df<-mutate(df,subject=subject_data$subject)
  
  ##Activity id column
  activity_data<-fread(activity_source,col.names = 'activity_id')
  df<-mutate(df,activity_id=activity_data$activity_id)
  
  df
}

#FUNCTION Writes Created Tidy Data Set to a file
write_tidy_data_set<-function(df,path='tydy_data/tidy_data_set.csv'){
  write.csv(df,path,quote=FALSE, sep=',',row.names = FALSE)
}

## PREPARATION TIDY DATA SET

#STEP 1. Load TEST Data
features_names='data_source/features.txt'
data_source='data_source/test/X_test.txt'
subject_source='data_source/test/subject_test.txt'
activity_source='data_source/test/y_test.txt'

test_data<-load_data(features_names,data_source,subject_source,activity_source)

#STEP 2. Load TRAIN Data
features_names='data_source/features.txt'
data_source='data_source/train/X_train.txt'
subject_source='data_source/train/subject_train.txt'
activity_source='data_source/train/y_train.txt'

train_data<-load_data(features_names,data_source,subject_source,activity_source)

create_tidy_data_set<-function()

#STEP 3. Merge Train And Test
all_data<-bind_rows(test_data,train_data)

#STEP 4. Create Tidy set with Mean and Standard Deviation columns

##Creates TidyDataSet structure with Activity, Subject, Means and STD of each feature 
tidy_set <- select(all_data,activity_id,subject,subject,matches('-(mean|std)\\(\\)'))

# STEP 5. Put activity label instead of numbers.
# Read activity labels
activity_labels<-tbl_df(read.csv('data_source/activity_labels.txt',sep=' ', header = FALSE, col.names = c('activity_id','activity')))
tidy_set<-tbl_df(merge(tidy_set,activity_labels))
tidy_set<-select(tidy_set,-activity_id)

#STEP 6. Prettify column names
names(tidy_set)<-gsub('^t','',names(tidy_set))
names(tidy_set)<-gsub('^f','Furie',names(tidy_set))
names(tidy_set)<-gsub('\\(\\)','',names(tidy_set))

#STEP 7. Create Activity-Subject Mean Tidy Data set
by_activity_and_subject<-group_by(tidy_set,activity,subject)
tidy_mean_by_activity_and_subject<-summarise_each(by_acivity_and_subject,funs(mean))

#STEP 8. Write datasets files
write_tidy_data_set(tidy_set,'tidy_data/tidy_set.csv')
write_tidy_data_set(tidy_mean_by_activity_and_subject,'tidy_data/acitivity_subject_mean.csv')




