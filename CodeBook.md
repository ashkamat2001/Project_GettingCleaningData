
DATA DICTIONARY for TidyData.txt
================================

  "1" "Activity"       : Activity 

              Can contain values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

              Method of constructing:

                  The activity code from y_<train|test>.txt was added into x_<train|test>.txt and the activity code was converterd into activity description by looking up the activity code from activity_labels.txt

 
 "2" "Subject"         : Subject Code 

              Can contain values:  1 to 30

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

      7)The name was also augmented as "MeanOf<FeatureName>" to indicate that the variable is a mean of the corresponding feature.

"3" "MeanOf_tBodyAcc.mean.X"

"4" "MeanOf_tBodyAcc.mean.Y"

"5" "MeanOf_tBodyAcc.mean.Z"

"6" "MeanOf_tBodyAcc.std.X"

"7" "MeanOf_tBodyAcc.std.Y"

"8" "MeanOf_tBodyAcc.std.Z"

"9" "MeanOf_tGravityAcc.mean.X"

"10" "MeanOf_tGravityAcc.mean.Y"

"11" "MeanOf_tGravityAcc.mean.Z"

"12" "MeanOf_tGravityAcc.std.X"

"13" "MeanOf_tGravityAcc.std.Y"

"14" "MeanOf_tGravityAcc.std.Z"

"15" "MeanOf_tBodyAccJerk.mean.X"

"16" "MeanOf_tBodyAccJerk.mean.Y"

"17" "MeanOf_tBodyAccJerk.mean.Z"

"18" "MeanOf_tBodyAccJerk.std.X"

"19" "MeanOf_tBodyAccJerk.std.Y"

"20" "MeanOf_tBodyAccJerk.std.Z"

"21" "MeanOf_tBodyGyro.mean.X"

"22" "MeanOf_tBodyGyro.mean.Y"

"23" "MeanOf_tBodyGyro.mean.Z"

"24" "MeanOf_tBodyGyro.std.X"

"25" "MeanOf_tBodyGyro.std.Y"

"26" "MeanOf_tBodyGyro.std.Z"

"27" "MeanOf_tBodyGyroJerk.mean.X"

"28" "MeanOf_tBodyGyroJerk.mean.Y"

"29" "MeanOf_tBodyGyroJerk.mean.Z"

"30" "MeanOf_tBodyGyroJerk.std.X"

"31" "MeanOf_tBodyGyroJerk.std.Y"

"32" "MeanOf_tBodyGyroJerk.std.Z"

"33" "MeanOf_tBodyAccMag.mean"

"34" "MeanOf_tBodyAccMag.std"

"35" "MeanOf_tGravityAccMag.mean"

"36" "MeanOf_tGravityAccMag.std"

"37" "MeanOf_tBodyAccJerkMag.mean"

"38" "MeanOf_tBodyAccJerkMag.std"

"39" "MeanOf_tBodyGyroMag.mean"

"40" "MeanOf_tBodyGyroMag.std"

"41" "MeanOf_tBodyGyroJerkMag.mean"

"42" "MeanOf_tBodyGyroJerkMag.std"

"43" "MeanOf_fBodyAcc.mean.X"

"44" "MeanOf_fBodyAcc.mean.Y"

"45" "MeanOf_fBodyAcc.mean.Z"

"46" "MeanOf_fBodyAcc.std.X"

"47" "MeanOf_fBodyAcc.std.Y"

"48" "MeanOf_fBodyAcc.std.Z"

"49" "MeanOf_fBodyAcc.meanFreq.X"

"50" "MeanOf_fBodyAcc.meanFreq.Y"

"51" "MeanOf_fBodyAcc.meanFreq.Z"

"52" "MeanOf_fBodyAccJerk.mean.X"

"53" "MeanOf_fBodyAccJerk.mean.Y"

"54" "MeanOf_fBodyAccJerk.mean.Z"

"55" "MeanOf_fBodyAccJerk.std.X"

"56" "MeanOf_fBodyAccJerk.std.Y"

"57" "MeanOf_fBodyAccJerk.std.Z"

"58" "MeanOf_fBodyAccJerk.meanFreq.X"

"59" "MeanOf_fBodyAccJerk.meanFreq.Y"

"60" "MeanOf_fBodyAccJerk.meanFreq.Z"

"61" "MeanOf_fBodyGyro.mean.X"

"62" "MeanOf_fBodyGyro.mean.Y"

"63" "MeanOf_fBodyGyro.mean.Z"

"64" "MeanOf_fBodyGyro.std.X"

"65" "MeanOf_fBodyGyro.std.Y"

"66" "MeanOf_fBodyGyro.std.Z"

"67" "MeanOf_fBodyGyro.meanFreq.X"

"68" "MeanOf_fBodyGyro.meanFreq.Y"

"69" "MeanOf_fBodyGyro.meanFreq.Z"

"70" "MeanOf_fBodyAccMag.mean"

"71" "MeanOf_fBodyAccMag.std"

"72" "MeanOf_fBodyAccMag.meanFreq"

"73" "MeanOf_fBodyBodyAccJerkMag.mean"

"74" "MeanOf_fBodyBodyAccJerkMag.std"

"75" "MeanOf_fBodyBodyAccJerkMag.meanFreq"

"76" "MeanOf_fBodyBodyGyroMag.mean"

"77" "MeanOf_fBodyBodyGyroMag.std"

"78" "MeanOf_fBodyBodyGyroMag.meanFreq"

"79" "MeanOf_fBodyBodyGyroJerkMag.mean"

"80" "MeanOf_fBodyBodyGyroJerkMag.std"

"81" "MeanOf_fBodyBodyGyroJerkMag.meanFreq"

"82" "MeanOf_angle.tBodyAccMean.gravity."

"83" "MeanOf_angle.tBodyAccJerkMean..gravityMean."

"84" "MeanOf_angle.tBodyGyroMean.gravityMean."

"85" "MeanOf_angle.tBodyGyroJerkMean.gravityMean."

"86" "MeanOf_angle.X.gravityMean."

"87" "MeanOf_angle.Y.gravityMean."

"88" "MeanOf_angle.Z.gravityMean."
