---
title: "CodeBook.md"
output: html_document
date: "2022-10-12"
---

This is a Codebook for the course project from "Getting And Cleaning Data" course.\
The project contains two tidy datasets described in the following sections.

## complete_features.csv
This dataset contains values merged from test and training datasets. It features only
the features describing mean and standard deviation for all the provided parameters.
Additionaly, one column describing the activity and one column for ID of the subject
were added.

- subject_id - ID of subject
- activity - Name of activity
- tBodyAccMag-mean() - Mean value of the series of measurments for tBodyAccMag.
- tBodyAccMag-std() - Standard deviation value of the series of measurments for tBodyAccMag.
- tGravityAccMag-mean() - Mean value of the series of measurments for tGravityAccMag.
- tGravityAccMag-std() - Standard deviation value of the series of measurments for tGravityAccMag.
- tBodyAccJerkMag-mean() - Mean value of the series of measurments for tBodyAccJerkMag.
- tBodyAccJerkMag-std() - Standard deviation value of the series of measurments for tBodyAccJerkMag.
- tBodyGyroMag-mean() - Mean value of the series of measurments for tBodyGyroMag.
- tBodyGyroMag-std() - Standard deviation value of the series of measurments for tBodyGyroMag.
- tBodyGyroJerkMag-mean() - Mean value of the series of measurments for tBodyGyroJerkMag.
- tBodyGyroJerkMag-std() - Standard deviation value of the series of measurments for tBodyGyroJerkMag.
- fBodyAccMag-mean() - Mean value of the series of measurments for fBodyAccMag.
- fBodyAccMag-std() - Standard deviation value of the series of measurments for fBodyAccMag.
- fBodyBodyAccJerkMag-mean() - Mean value of the series of measurments for fBodyBodyAccJerkMag.
- fBodyBodyAccJerkMag-std() - Standard deviation value of the series of measurments for fBodyBodyAccJerkMag.
- fBodyBodyGyroMag-mean() - Mean value of the series of measurments for fBodyBodyGyroMag.
- fBodyBodyGyroMag-std() - Standard deviation value of the series of measurments for fBodyBodyGyroMag.
- fBodyBodyGyroJerkMag-mean() - Mean value of the series of measurments for fBodyBodyGyroJerkMag.
- fBodyBodyGyroJerkMag-std() - Standard deviation value of the series of measurments for fBodyBodyGyroJerkMag.

## averages.csv
This dataset is a derivative of complete_features.csv. It contains mean value of
all the parameters for each activity and each subject.

The variables for this dataset are named the same as in case for complete_features.csv, 
however their values describe the mean values taken across all the measurments
within (subject, activity) groups.
