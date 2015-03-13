README.md
=========

ANALYSIS 
---------
The script run_analysis.R performs all the merging and cleaning required on the data file for the project. 

INPUT DATA
----------
It inputs data from the following files from the downloaded input dataset
  "UCI HAR DataSet\activity_labels.txt" : This contains activity codes and their descriptive names

  "UCI HAR DataSet\features.txt" : This contains the variable names for the training and test data

  Training data from the following files:
    "UCI HAR DataSet\train\subject_train.txt" : Every row of subject_train.txt represents a subject id for the corresponding row of X_train
    "UCI HAR DataSet\train\X_train.txt": Every row of X_train.txt represents data row containing values for the various features in the same order as specified in features.txt
    "UCI HAR DataSet\train\y_train.txt" : Every row of y_train.txt represents an activity for the corresponding row of X_train 
    
  Test data test\subject_test.txt, test\X_test.txt, test\y_test.txt with similar structure as the training data
  
ANALYSIS Steps
--------------
1) Only mean and std related columns are taken in from test and training datasets
2) X, Y and Subject data is merged columnwise for both test and training datasets. 
3) Training and test data sets are row merged together to get the complete data set
4) The activity codes are replaced with descriptions from activity_labels.txt
5) The variable names are replaced with names from features.txt
6) TidyData file is created by averaging the numeric columns over activity & subject code.


OUTPUT DATA
-----------
The final tidy data is output to the file TidyData.txt. The Codebook for TidyData.txt is CodeBook.md
