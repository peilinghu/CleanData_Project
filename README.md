About run_analysis.R 
========================================================
## run_analysis.R

This is a script to pre-process a dataset collected from the accelerometers from the Samsung Galaxy S smartphone. A full description can be obtained from here [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

This script performs the following tasks:  
1. Load and merge training and testing datasets including subject, activity, and measurement data.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.   
3. Apply descriptive activity names to activities in the data set.  
4. Appropriately labels the data set with descriptive variable names.   
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.   
6. Export the tide data set to working directory.  

## Prerequisites

The following libraries are required to run this script. If they have not been installed before, use install.packages() to install them before running.

```r
library(data.table)
library(reshape2)
library(plyr)
```

## How to run the script
Use "source("run_analysis.R")" to execute the script. Enter the working directory at prompt and hit enter.

The progress indicators will display in the result panel. At the end, the tidy dataset will be saved at the working directory as tidy.csv.
Read training dataset...   
Read testing dataset...   
Combining datasets...  
Read features and extract mean and std...  
Assign descriptive names to dataset...  
Label data...  
Create tidy data...   
Export tide data...   
Done! Tidy data saved to \\...\tidydata.csv   

## How data is processed
1. Produce the intermediate processing datasets for both training and testing data  
        a. Load subject data  
        b. Load measurement data  
        c. Load activity label data  
2. Combine train and test data  
        a. Subject data  
        b. Measurement  
        c. Activity label    
3. Extract measurement on mean and standard deviation  
        a. Read feature data as table
        b. Grep measurement name and column id with mean() and std() in the name
        c. Use column id to get measurements from measurement table and assign column name to measurement table  
        d. Combine all dataset into one  
4. Assign descriptive activity label to data set  
        a. Load activity_label data  
        b. Merge with dataset  
        c. Remove activity code column  
5. Create tidy data set  
        a. Melt data set  
        b. Calculate mean with ddply   
        c. Dcast data  
6. Export tiday data 

## Output data  
The final output is stored in the working directory as tidydata.csv. It contains subject, activity, and features which are mean of mean and standard deviation of the same type of measurement for the same subject and same activity.
        

