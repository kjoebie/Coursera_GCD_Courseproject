Readme run_analysis.R
========================================================

This document explain the steps to run the R script run_analysis.R

The scripts depends on the following files and folders:
- folder "UCI HAR Dataset" containing serveral files and two subfolders.
- file run_analysis.R

The run_analysis.R script uses data from the dataset in the *UCI HAR Dataset* folder. 
Please read the README.txt in the *UCI HAR Dataset* folder for more information about this dataset.

The script reads performs the following actions:
* merges the training dataset and test dataset into one dataset
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Please refer to the codebook.md for infomration about the variables.

Before running the script:

* Open it using R or RStudio.
* Change the folder name to the folder where you downloaded the files
* Save the script
* source the script using CTRL+SHIFT+S

After running the script a file called df_tidy.txt should be generated.