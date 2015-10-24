CodeBook
========
The following are the source files used from the dataset download from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 - features.txt: The column names for x_train.txt and x_test.txt data files
 - activity_labels.txt: Activity names associated with activity identifier
 - train data set files
     - subject_train.txt: contains the Subject ID
     - x_train.txt: contains the data for each subject by activity as specified in `featrues_info.txt` and `features.txt`
     - y_train.txt: contains the activity identifier
 - test data set files
     - subject_test.txt: contains the Subject ID
     - x_test.txt: contains the data for each subject by activity as specified in `featrues_info.txt` and `features.txt`
     - y_test.txt: contains the activity identifier


The `run_analysis.R` script uses the following 5 steps to create the tidy data set.
1. Merges the training and the test sets to create one data set.
+ Extracts only the measurements on the mean and standard deviation for each measurement. 
+ Uses descriptive activity names to name the activities in the data set
+ Appropriately labels the data set with descriptive variable names. 
+ From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The tidy data set contains total of 81 columns with average mean and std for various accelaration, angular measurements in X, Y, and Z directions for each subject and activity combination a total of 30 * 6 = 180 rows. 

  SubjectId                                                    
	
	Integer subject identifier a factor with 30 levels for 1..30
  Activity                                                     
	
	Factor w/ 6 levels 
	
		LAYING
		
		SITTING
	
		STANDING
		
		WALKING
	
		WALKING_DOWNSTAIRS
		
		WALKING_UPSTAIRS

  
  TimeDomainBodyAccelerationMeanX                              
	 
	 numeric  - average value by activity for each subject
  
  TimeDomainBodyAccelerationMeanY                              
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationMeanZ                              
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationStandardDeviationX                 
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationStandardDeviationY                 
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationStandardDeviationZ                 
	
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationMeanX                           
	 
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationMeanY                           
	 
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationMeanZ                           
	 
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationStandardDeviationX              
	 
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationStandardDeviationY              
	 
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationStandardDeviationZ              
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkMeanX                          
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkMeanY                          
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkMeanZ                          
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkStandardDeviationX             
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkStandardDeviationY             
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkStandardDeviationZ             
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeMeanX                                 
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeMeanY                                 
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeMeanZ                                 
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeStandardDeviationX                    
	
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeStandardDeviationY                    
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeStandardDeviationZ                    
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkMeanX                             
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkMeanY                             
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkMeanZ                             
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkStandardDeviationX                
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkStandardDeviationY                
	
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkStandardDeviationZ                
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationMagnitudeMean                      
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationMagnitudeStandardDeviation         
	 
	 numeric - average value by activity for each subject
  
  TimeDomainGravityAccelerationMagnitudeMean                   
	 
	 numeric - average value by activity for each subject
 
  TimeDomainGravityAccelerationMagnitudeStandardDeviation      
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkMagnitudeMean                  
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyAccelerationJerkMagnitudeStandardDeviation     
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeMagnitudeMean                         
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeMagnitudeStandardDeviation            
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkMagnitudeMean                     
	 
	 numeric - average value by activity for each subject
  
  TimeDomainBodyGyroscopeJerkMagnitudeStandardDeviation        
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMeanX                         
	
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMeanY                         
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMeanZ                         
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationStandardDeviationX            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationStandardDeviationY            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationStandardDeviationZ            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMeanFrequencyX                
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMeanFrequencyY                
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMeanFrequencyZ                
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMeanX                     
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMeanY                     
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMeanZ                     
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkStandardDeviationX        
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkStandardDeviationY        
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkStandardDeviationZ        
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMeanFrequencyX            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMeanFrequencyY            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMeanFrequencyZ            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMeanX                            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMeanY                            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMeanZ                            
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeStandardDeviationX               
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeStandardDeviationY               
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeStandardDeviationZ               
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMeanFrequencyX                   
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMeanFrequencyY                   
	
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMeanFrequencyZ                   
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMagnitudeMean                 
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMagnitudeStandardDeviation    
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationMagnitudeMeanFrequency        
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMagnitudeMean             
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyAccelerationJerkMagnitudeMeanFrequency    
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMagnitudeMean                    
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMagnitudeStandardDeviation       
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeMagnitudeMeanFrequency           
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeJerkMagnitudeMean                
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation   
	 
	 numeric - average value by activity for each subject
  
  FrequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency       
	 
	 numeric - average value by activity for each subject
