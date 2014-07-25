# Getting and Cleaning Data
# run_analysis.R

library(reshape2)
library(plyr)

# Set working directory
wd <- readline(prompt="Enter the working directory:")
setwd(wd)
filepath <- getwd()

# Merge the training and test set to create one data set.
## Read the file
testpath <- paste(filepath,"/UCI HAR Dataset/test/",sep="")
trainpath <- paste(filepath,"/UCI HAR Dataset/train/",sep="")

## Read data set into data frame
cat("Read training dataset...","\n")
dftrain <- read.table(paste(trainpath,"subject_train.txt",sep=""))
dftrainx <- read.table(paste(trainpath,"x_train.txt", sep=""))
dftrainy <- read.table(paste(trainpath,"y_train.txt",sep=""))

cat("Read testing dataset...","\n")
dftest <- read.table(paste(testpath,"subject_test.txt",sep=""))
dftestx <- read.table(paste(testpath,"x_test.txt",sep=""))
dftesty <- read.table(paste(testpath,"y_test.txt",sep=""))

## Combine subject table
cat("Combining datasets...","\n")
sub <- rbind(dftrain, dftest)
colnames(sub) <- "subject"

## Combine measurement data
meas <- rbind(dftrainx, dftestx)

## Combine activity label data
act <- rbind(dftrainy, dftesty)
colnames(act) <- "activity"

# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Read features.txt
cat("Read features and extract mean and std...","\n")
dffeatures <- read.table(paste(filepath,"/UCI HAR Dataset/features.txt",sep=""))
colnames(dffeatures) <- c("item","measurement")
col <- colnames(meas)
header <- cbind(dffeatures,col)

# Get mean and standard deviation measurements
subcol <- grep("mean\\(\\)|std\\(\\)", header$measurement)
msubset <- meas[subcol]
colnames(msubset) <- header$measurement[subcol]

# Combine data sets into one
data <- cbind(act, sub, msubset)

# Uses descriptive activity names to name the activities in the data set
cat("Assign descriptive names to dataset...","\n")
dfactname<- read.table(paste(filepath,"/UCI HAR Dataset/activity_labels.txt",sep=""))
colnames(dfactname) <- c("activity","activity_name")

# Appropriately labels the data set with descriptive variable names. 
cat("Label data...","\n")
data <- merge(x=dfactname, y=data, by.x="activity", by.y="activity")
data <- data[,!names(data)=="activity"]

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
cat("Create tidy data...","\n")
melted <- melt(data,id=c("subject","activity_name"), variable.name="feature", value.name="measurement")
summary <- ddply(melted, .(subject, activity_name, feature), summarize, fmean=mean(measurement))
tidy <- dcast(summary, subject+activity_name~feature, value.var="fmean")

# Export as txt file
cat("Export tide data...","\n")
write.table(tidy, file="tidydata.txt",sep=",",row.names=FALSE)

cat(paste(paste("Done! Tidy data saved to ", wd, sep=""),"\\tidydata.txt", sep=""),"\n")