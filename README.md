# Getting and Cleaning Data Course Project

This repository was created for the purpose of Data Science course Getting and Cleaning Data Course Project.
It contains 4 files:
* README.md - short description of files
* CodeBook.md - description of work and variables
* run_analysis.R - R script which manipulates input data and transforms it to tidy data
* tidy_data.txt - tidy data output from run_analysis.R

In general run_analysis.R script does the following:
* Downloads and unzip required files 
* Loads data to R
* Merges the datasets
* Extracts only the mean and std measurements from dataset
* Creates tidy data
* Writes tidy data to directory