#set the working directory
root <- "C:\\Users\\albert.QBIDS\\Coursera\\Johns Hopkins\\The Data Science Track\\3 Getting and Cleaning data\\Course project\\Github"
setwd(root)

#init variables which reference the different files
rootdata <- paste(root, "\\", "UCI HAR Dataset", sep="")
featurenamesfilename <- "features.txt"
activitylablesfilename <- "activity_labels.txt"

roottestdata <- paste(rootdata, "\\", "test", sep="")
testdatafilename <- "X_test.txt"
testsubjectfilename <- "subject_test.txt"
testactivityfilename <- "y_test.txt"

roottraindata <- paste(rootdata, "\\", "train", sep="")
traindatafilename <- "X_train.txt"
trainsubjectfilename <- "subject_train.txt"
trainactivityfilename <- "y_train.txt"

#
# step 1: merge the test and training dataset into 1 dataset
#

## testdata
testdata  <- read.table(paste(roottestdata ,"\\",testdatafilename , sep=""), header=F, stringsAsFactors=F,comment.char ="", colClasses="numeric")
testactivity <- read.table(paste(roottestdata ,"\\",testactivityfilename , sep=""), header=F, stringsAsFactors=F,comment.char ="")
testsubject <- read.table(paste(roottestdata ,"\\",testsubjectfilename , sep=""), header=F, stringsAsFactors=F,comment.char ="")

#Add activity as second column
testdata <- cbind(testactivity, testdata)
#Add subject as first column
testdata <- cbind(testsubject, testdata)

## traindata
traindata  <- read.table(paste(roottraindata ,"\\",traindatafilename , sep=""), header=F, stringsAsFactors=F,comment.char ="", colClasses="numeric")
trainactivity <- read.table(paste(roottraindata ,"\\",trainactivityfilename , sep=""), header=F, stringsAsFactors=F,comment.char ="")
trainsubject <- read.table(paste(roottraindata ,"\\",trainsubjectfilename , sep=""), header=F, stringsAsFactors=F,comment.char ="")

#Add activity as second column
traindata <- cbind(trainactivity, traindata)
#Add subject as first column
traindata <- cbind(trainsubject, traindata)

# combine the two datasets into 1
df_tidy1 <- rbind(testdata, traindata)

#
# Step 2: Extract only the measurements on the mean and standard deviation for each measurement. 
#

## tead the column names
features <- read.table(paste(rootdata,"\\",featurenamesfilename, sep=""), header=F, sep=" ", stringsAsFactors=F)

# create a vector with all the column names, including the subject and activity
featurenames <- c("subject", "activity",features[,"V2"])

## add the columnnames to the dataset
names(df_tidy1) <- featurenames

## get a vector with the columnnames containing the mean and std
## manual include the first two columns for subject and activity 
## this ignores the columns like meanFreq as this is used to calculated the mean, not actually the result
includedcolumns <- sort( c(1,2,grep("-mean()", featurenames, fixed=T), grep("-std()", featurenames, fixed=T)))

## filter the dataset with only the subset of columns
df_tidy1 <- df_tidy1[,featurenames[includedcolumns]]

#
# 3 Use descriptive activity names to name the activities in the data set
#

## tead the activity labels
activities <- read.table(paste(rootdata,"\\",activitylablesfilename, sep=""), header=F, sep=" ", stringsAsFactors=F)
names(activities) <- c("activity", "activity.description")

#replace the contents of the activities
df_tidy1$activity <- activities[df_tidy1$activity,2]


#
# 4 Appropriately labels the dataset with descriptive variable names. 
#
columns <- featurenames[includedcolumns]
columns <- gsub("-","_",columns)
columns <- gsub("\\(\\)","",columns)
columns <- tolower(columns)
#remove duplicate bodybody
columns <- gsub("bodybody","body",columns)

#assing the updated column names to the dataset
names(df_tidy1) <- columns

#
# 5 Creates a second, independent tidy data set with 
#   the average of each variable for each activity and each subject. 
#

# used the formula notation (.~)
df_tidy2 <- aggregate(.~subject+activity, FUN=mean, data=df_tidy1)

#save the tidy dataset into a file
write.table(df_tidy2, "ds_tidy2.txt")


