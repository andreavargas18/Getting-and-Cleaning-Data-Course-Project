# Getting and Cleaning Data Course Project
This repository contains all the codes for the final assignment of the Getting and Cleaning Course of John Hopkings in Coursera. The main goal is to demonstrate the ability collect, work with, and clean a data set, as well as, preparing tidy data set that can be later used for analysis.

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called `run_analysis.R` that does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement.

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Files in the repository 
`run_analysis.R` : Script that processes and cleans the dataset

`CodeBook.md` :  Documentation of variables

`tidydata.txt` : The final tidy dataset containing average values per subject and activity

`README.md :` This file explainig the goal of project.

# How to Run the Script
Please follow the next steps:

1. Download the data set from the following link: [Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). Extract the zip file to your working direcory.

2.  Run the script. Open R and run the `run_analysis.R` script, this will read the data, perform the necessary transformations, and generate the tidydata.txt file with the tidy data set.
