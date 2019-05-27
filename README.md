# Course Project: Getting and Cleaning Data
This repository is the submission of the course project for the Coursera course "Getting and Cleaning Data".

## Description of analysis file

This repository contains a file called *run_analysis.R* that will preform the steps outlined below providing the UCI HAR Dataset is in the working directory. This repository also contains a codebook.md file describing the datasets and variables.

Parts of the analysis require the *dplyr* package.

The anlaysis code performs the following:

 1. Read in required datasets.
 2. Merge training and test datasets.
 3. Apply names, combine datasets, select columns of interest.
 4. Create new dataset of subject by activity means for each variable.
