DATA DICTIONARY for TidyData.txt
================================

  [1] "Activity"       : Activity 
              Can contain values:
                  WALKING,
                  WALKING_UPSTAIRS
                  WALKING_DOWNSTAIRS
                  SITTING
                  STANDING
                  LAYING
              Method of constructing:
                  The activity code from y_<train|test>.txt was added into x_<train|test>.txt and the activity code was converterd into activity description by looking up the activity code from activity_labels.txt


  [2] "Subject"         : Subject Code 
              Can contain values: 
                  1 to 30
              Method of constructing:
                  The subject code from subject_<train|test>.txt was added into x_<train|test>.txt 


  The following variables are the means of the corresponding variables for a subject and activity code combination.
  Method of constructing:
      1)Data input from "x_train.txt" & "x_test.txt" was row-appended together            
      2)Columns labels were taken correspondingly from "features.txt" 
      3)Only "mean"" and "std"" related columns were subsetted from this 
      4)subject code and activity code were added as columns to each set from subject_<train|test>.txt and y_<train|test>.txt
      5)The feature names were mostly retained as is since they were quite self explanatory. But "()" was removed from the names for better readability. 
      6)Mean for each feature was computed for a (subject & activity) combination
      7)The name was also augmented as "MeanOf <FeatureName>" to indicate that the variable is a mean of the corresponding feature.

 [3] "MeanOf.tBodyAcc.mean.X"                     
 [4] "MeanOf.tBodyAcc.mean.Y"                     
 [5] "MeanOf.tBodyAcc.mean.Z"                     
 [6] "MeanOf.tBodyAcc.std.X"                      
 [7] "MeanOf.tBodyAcc.std.Y"                      
 [8] "MeanOf.tBodyAcc.std.Z"                      
 [9] "MeanOf.tGravityAcc.mean.X"                  
[10] "MeanOf.tGravityAcc.mean.Y"                  
[11] "MeanOf.tGravityAcc.mean.Z"                  
[12] "MeanOf.tGravityAcc.std.X"                   
[13] "MeanOf.tGravityAcc.std.Y"                   
[14] "MeanOf.tGravityAcc.std.Z"                   
[15] "MeanOf.tBodyAccJerk.mean.X"                 
[16] "MeanOf.tBodyAccJerk.mean.Y"                 
[17] "MeanOf.tBodyAccJerk.mean.Z"                 
[18] "MeanOf.tBodyAccJerk.std.X"                  
[19] "MeanOf.tBodyAccJerk.std.Y"                  
[20] "MeanOf.tBodyAccJerk.std.Z"                  
[21] "MeanOf.tBodyGyro.mean.X"                    
[22] "MeanOf.tBodyGyro.mean.Y"                    
[23] "MeanOf.tBodyGyro.mean.Z"                    
[24] "MeanOf.tBodyGyro.std.X"                     
[25] "MeanOf.tBodyGyro.std.Y"                     
[26] "MeanOf.tBodyGyro.std.Z"                     
[27] "MeanOf.tBodyGyroJerk.mean.X"                
[28] "MeanOf.tBodyGyroJerk.mean.Y"                
[29] "MeanOf.tBodyGyroJerk.mean.Z"                
[30] "MeanOf.tBodyGyroJerk.std.X"                 
[31] "MeanOf.tBodyGyroJerk.std.Y"                 
[32] "MeanOf.tBodyGyroJerk.std.Z"                 
[33] "MeanOf.tBodyAccMag.mean"                    
[34] "MeanOf.tBodyAccMag.std"                     
[35] "MeanOf.tGravityAccMag.mean"                 
[36] "MeanOf.tGravityAccMag.std"                  
[37] "MeanOf.tBodyAccJerkMag.mean"                
[38] "MeanOf.tBodyAccJerkMag.std"                 
[39] "MeanOf.tBodyGyroMag.mean"                   
[40] "MeanOf.tBodyGyroMag.std"                    
[41] "MeanOf.tBodyGyroJerkMag.mean"               
[42] "MeanOf.tBodyGyroJerkMag.std"                
[43] "MeanOf.fBodyAcc.mean.X"                     
[44] "MeanOf.fBodyAcc.mean.Y"                     
[45] "MeanOf.fBodyAcc.mean.Z"                     
[46] "MeanOf.fBodyAcc.std.X"                      
[47] "MeanOf.fBodyAcc.std.Y"                      
[48] "MeanOf.fBodyAcc.std.Z"                      
[49] "MeanOf.fBodyAcc.meanFreq.X"                 
[50] "MeanOf.fBodyAcc.meanFreq.Y"                 
[51] "MeanOf.fBodyAcc.meanFreq.Z"                 
[52] "MeanOf.fBodyAccJerk.mean.X"                 
[53] "MeanOf.fBodyAccJerk.mean.Y"                 
[54] "MeanOf.fBodyAccJerk.mean.Z"                 
[55] "MeanOf.fBodyAccJerk.std.X"                  
[56] "MeanOf.fBodyAccJerk.std.Y"                  
[57] "MeanOf.fBodyAccJerk.std.Z"                  
[58] "MeanOf.fBodyAccJerk.meanFreq.X"             
[59] "MeanOf.fBodyAccJerk.meanFreq.Y"             
[60] "MeanOf.fBodyAccJerk.meanFreq.Z"             
[61] "MeanOf.fBodyGyro.mean.X"                    
[62] "MeanOf.fBodyGyro.mean.Y"                    
[63] "MeanOf.fBodyGyro.mean.Z"                    
[64] "MeanOf.fBodyGyro.std.X"                     
[65] "MeanOf.fBodyGyro.std.Y"                     
[66] "MeanOf.fBodyGyro.std.Z"                     
[67] "MeanOf.fBodyGyro.meanFreq.X"                
[68] "MeanOf.fBodyGyro.meanFreq.Y"                
[69] "MeanOf.fBodyGyro.meanFreq.Z"                
[70] "MeanOf.fBodyAccMag.mean"                    
[71] "MeanOf.fBodyAccMag.std"                     
[72] "MeanOf.fBodyAccMag.meanFreq"                
[73] "MeanOf.fBodyBodyAccJerkMag.mean"            
[74] "MeanOf.fBodyBodyAccJerkMag.std"             
[75] "MeanOf.fBodyBodyAccJerkMag.meanFreq"        
[76] "MeanOf.fBodyBodyGyroMag.mean"               
[77] "MeanOf.fBodyBodyGyroMag.std"                
[78] "MeanOf.fBodyBodyGyroMag.meanFreq"           
[79] "MeanOf.fBodyBodyGyroJerkMag.mean"           
[80] "MeanOf.fBodyBodyGyroJerkMag.std"            
[81] "MeanOf.fBodyBodyGyroJerkMag.meanFreq"       
[82] "MeanOf.angle.tBodyAccMean.gravity."         
[83] "MeanOf.angle.tBodyAccJerkMean..gravityMean."
[84] "MeanOf.angle.tBodyGyroMean.gravityMean."    
[85] "MeanOf.angle.tBodyGyroJerkMean.gravityMean."
[86] "MeanOf.angle.X.gravityMean."                
[87] "MeanOf.angle.Y.gravityMean."                
[88] "MeanOf.angle.Z.gravityMean."           