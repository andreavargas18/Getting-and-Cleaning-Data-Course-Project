# Project Code Book
This project processes and cleans the UCI HAR Dataset, which consists of measurements from smart devices. The goal is to merge training and test datasets, extract key features, and create a tidy dataset summarizing the mean of each measurement per activity and subject.

This document serves as the codebook for the project, detailing how to access the source data, run the R script, and interpret the variables and transformations used throughout the process.

## Source Data
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:[UCI HAR Data Set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

## R SCRIPT CODE

### 1. Load activities labels and features
- Activity labels are read from `activity_labels.txt`.
- Feature names are read from `features.txt`.  

### 2. Extract Mean and SD:
- A subset of features is extracted using a regex pattern to match `"mean()"` and `"std()"`.

### 3. Load and Merge Data:
- Test and Training datasets are loaded separately.  
- Subject IDs, activity labels, and extracted feature values are combined.  
- The test and training datasets are merged using `rbind()`.

### 4. Description of Activities Names
- Activity numbers are replaced with their respective names using the `activity_labels` file.  

### 5. Appropriate labels
- Column names are updated for better readability.

### 6. Create Tidy Set
 - The dataset is grouped by `subject` and `activity`.
 - The mean of each variable is calculated.
 - The final tidy dataset is saved as `tidydata.txt`.

## Variables
The following variables are used in the dataset:

- **subject**: Identifier for each participant in the study.
- **activity**: The activity performed by the participant (e.g., Walking, Sitting, Standing).
- **feature variables**: The selected measurements from the dataset, corresponding to mean and standard deviation calculations for each feature.

### Detailed Variable Descriptions:
- `xtest` , `ytest`, `stest` : contains the data from the test dataset.
- `xtrain`, `ytrain`, `strain` : contains data from the training dataset.
- `test` merge all the data into one test dataset.
- `train` merge all the data into one training dataset.
- `Final_data` merge the test and train dataset into one final dataset.
  
- **subject**: Integer value representing the subject ID (1-30).
- **activity**: Factor variable representing activities performed.
- **mean**: Mean values.
- **std**: Standard deviation values.
