Code Book
========================================================
## Description of data in the tidy dataset

The tidy dataset was derived from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) stored in [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/index.html). The method used to process the data set is described in the [README](https://github.com/peilinghu/CleanData_Project/blob/master/README.md) file.

30 individual participated in the project, different measurements were taken on each individual for 6 different type of activities. There are a total of 180 cases and 68 features in the tody data set. Out of the 68 feathers, 2 are ID features and 66 are measurements features. 

### ID Features
* <code>subject</code>                    - Integer, ID of the participants. 
* <code>activity_name</code>              - String, descriptive label of the activity when measurements were taken.

### Measurement Features  
All 66 measurement features are in numeric format and are calculated as the mean of each variable taken for each activity and each subject. The original measurements were normalized and bounded within[-1, 1]. Detailed data set information can be view at the [Data Set Description page](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and the README.txt file in unzipped [UCI HAR Dataset](http://archive.ics.uci.edu/ml/machine-learning-databases/00240/) file or [here](https://github.com/peilinghu/CleanData_Project/tree/master/UCI%20HAR%20Dataset) folder.

* <code>tBodyAcc-mean()-X</code>           
* <code>tBodyAcc-mean()-Y</code>          
* <code>tBodyAcc-mean()-Z</code>          
* <code>tBodyAcc-std()-X</code>           
* <code>tBodyAcc-std()-Y</code>           
* <code>tBodyAcc-std()-Z</code>           
* <code>tGravityAcc-mean()-X</code>       
* <code>tGravityAcc-mean()-Y</code>       
* <code>tGravityAcc-mean()-Z</code>       
* <code>tGravityAcc-std()-X</code>        
* <code>tGravityAcc-std()-Y</code>        
* <code>tGravityAcc-std()-Z</code>        
* <code>tBodyAccJerk-mean()-X</code>      
* <code>tBodyAccJerk-mean()-Y</code>      
* <code>tBodyAccJerk-mean()-Z</code>      
* <code>tBodyAccJerk-std()-X</code>       
* <code>tBodyAccJerk-std()-Y</code>       
* <code>tBodyAccJerk-std()-Z</code>       
* <code>tBodyGyro-mean()-X</code>         
* <code>tBodyGyro-mean()-Y</code>         
* <code>tBodyGyro-mean()-Z</code>         
* <code>tBodyGyro-std()-X</code>          
* <code>tBodyGyro-std()-Y</code>          
* <code>tBodyGyro-std()-Z</code>          
* <code>tBodyGyroJerk-mean()-X</code>     
* <code>tBodyGyroJerk-mean()-Y</code>     
* <code>tBodyGyroJerk-mean()-Z</code>     
* <code>tBodyGyroJerk-std()-X</code>      
* <code>tBodyGyroJerk-std()-Y</code>      
* <code>tBodyGyroJerk-std()-Z</code>      
* <code>tBodyAccMag-mean()</code>         
* <code>tBodyAccMag-std()</code>          
* <code>tGravityAccMag-mean()</code>      
* <code>tGravityAccMag-std()</code>       
* <code>tBodyAccJerkMag-mean()</code>     
* <code>tBodyAccJerkMag-std()</code>      
* <code>tBodyGyroMag-mean()</code>        
* <code>tBodyGyroMag-std()</code>         
* <code>tBodyGyroJerkMag-mean()</code>    
* <code>tBodyGyroJerkMag-std()</code>     
* <code>fBodyAcc-mean()-X</code>          
* <code>fBodyAcc-mean()-Y</code>          
* <code>fBodyAcc-mean()-Z</code>          
* <code>fBodyAcc-std()-X</code>           
* <code>fBodyAcc-std()-Y</code>           
* <code>fBodyAcc-std()-Z</code>           
* <code>fBodyAccJerk-mean()-X</code>      
* <code>fBodyAccJerk-mean()-Y</code>      
* <code>fBodyAccJerk-mean()-Z</code>      
* <code>fBodyAccJerk-std()-X</code>       
* <code>fBodyAccJerk-std()-Y</code>       
* <code>fBodyAccJerk-std()-Z</code>       
* <code>fBodyGyro-mean()-X</code>         
* <code>fBodyGyro-mean()-Y</code>         
* <code>fBodyGyro-mean()-Z</code>         
* <code>fBodyGyro-std()-X</code>          
* <code>fBodyGyro-std()-Y</code>          
* <code>fBodyGyro-std()-Z</code>          
* <code>fBodyAccMag-mean()</code>         
* <code>fBodyAccMag-std()</code>          
* <code>fBodyBodYAccJerkMag-mean()</code> 
* <code>fBodyBodYAccJerkMag-std()</code>  
* <code>fBodyBodYGyroMag-mean()</code>    
* <code>fBodyBodYGyroMag-std()</code>     
* <code>fBodyBodYGyroJerkMag-mean()</code>
* <code>fBodyBodYGyroJerkMag-std()</code> 
