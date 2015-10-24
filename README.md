Getting and Cleaning Data - Course Project
==========================================

This repository hosts the R code and documentation files of the Course Project for the Data Science's track course *Getting and Cleaning data*.

The dataset being used is: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data files used for the project (UCI HAR Dataset)[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ]


## Files

The code downloads the data zip file, extracts the zip file in the currect working directory. The files and directory of the data files are same as what is in the zip file, relative to the currect working directory.

`run_analysis.R` contains all the code to perform the analyses described in the 5 steps. The script can be run in RStudio using `source('run_analysis.R')`. This R script should be placed in current working directory of RStudio before it is executed.

The tidy data output file will be stored in the current working directory with file name `tidy_data.txt`.

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.
