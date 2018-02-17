# Code Book

Code Book describes data which was manipulated and transformed into tidy data.
This data has two identifier variables:
* activities - activity names which are labeled as WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* subject - IDs of a group of 30 volunteers

The features selected for this database comes from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals 
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency 
of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth 
filter with a corner frequency of 0.3 Hz. Features are normalized and bounded within [-1,1].

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these dimensional signals were 
calculated using the Euclidean norm. Finally a Fast Fourier Transform (FFT) was applied to some of these signals. 

Set of variables that were estimated from these signals: 
* mean() - Mean value
* std() - Standard deviation

Tidy data variables:                                         
* timeBodyAccelerometer-mean()-X                    
* timeBodyAccelerometer-mean()-Y                    
* timeBodyAccelerometer-mean()-Z                    
* timeBodyAccelerometer-std()-X                     
* timeBodyAccelerometer-std()-Y                     
* timeBodyAccelerometer-std()-Z                     
* timeGravityAccelerometer-mean()-X                 
* timeGravityAccelerometer-mean()-Y                 
* timeGravityAccelerometer-mean()-Z                 
* timeGravityAccelerometer-std()-X                  
* timeGravityAccelerometer-std()-Y                  
* timeGravityAccelerometer-std()-Z                  
* timeBodyAccelerometerJerk-mean()-X                
* timeBodyAccelerometerJerk-mean()-Y                
* timeBodyAccelerometerJerk-mean()-Z                
* timeBodyAccelerometerJerk-std()-X                 
* timeBodyAccelerometerJerk-std()-Y                 
* timeBodyAccelerometerJerk-std()-Z                 
* timeBodyGyroscope-mean()-X                        
* timeBodyGyroscope-mean()-Y                        
* timeBodyGyroscope-mean()-Z                        
* timeBodyGyroscope-std()-X                         
* timeBodyGyroscope-std()-Y                         
* timeBodyGyroscope-std()-Z                         
* timeBodyGyroscopeJerk-mean()-X                    
* timeBodyGyroscopeJerk-mean()-Y                    
* timeBodyGyroscopeJerk-mean()-Z                    
* timeBodyGyroscopeJerk-std()-X                     
* timeBodyGyroscopeJerk-std()-Y                     
* timeBodyGyroscopeJerk-std()-Z                     
* timeBodyAccelerometerMagnitude-mean()             
* timeBodyAccelerometerMagnitude-std()              
* timeGravityAccelerometerMagnitude-mean()          
* timeGravityAccelerometerMagnitude-std()           
* timeBodyAccelerometerJerkMagnitude-mean()         
* timeBodyAccelerometerJerkMagnitude-std()          
* timeBodyGyroscopeMagnitude-mean()                 
* timeBodyGyroscopeMagnitude-std()                  
* timeBodyGyroscopeJerkMagnitude-mean()             
* timeBodyGyroscopeJerkMagnitude-std()              
* frequencyBodyAccelerometer-mean()-X               
* frequencyBodyAccelerometer-mean()-Y               
* frequencyBodyAccelerometer-mean()-Z               
* frequencyBodyAccelerometer-std()-X                
* frequencyBodyAccelerometer-std()-Y                
* frequencyBodyAccelerometer-std()-Z                
* frequencyBodyAccelerometer-meanFreq()-X           
* frequencyBodyAccelerometer-meanFreq()-Y           
* frequencyBodyAccelerometer-meanFreq()-Z           
* frequencyBodyAccelerometerJerk-mean()-X           
* frequencyBodyAccelerometerJerk-mean()-Y           
* frequencyBodyAccelerometerJerk-mean()-Z           
* frequencyBodyAccelerometerJerk-std()-X            
* frequencyBodyAccelerometerJerk-std()-Y            
* frequencyBodyAccelerometerJerk-std()-Z            
* frequencyBodyAccelerometerJerk-meanFreq()-X       
* frequencyBodyAccelerometerJerk-meanFreq()-Y       
* frequencyBodyAccelerometerJerk-meanFreq()-Z       
* frequencyBodyGyroscope-mean()-X                   
* frequencyBodyGyroscope-mean()-Y                   
* frequencyBodyGyroscope-mean()-Z                   
* frequencyBodyGyroscope-std()-X                    
* frequencyBodyGyroscope-std()-Y                    
* frequencyBodyGyroscope-std()-Z                    
* frequencyBodyGyroscope-meanFreq()-X               
* frequencyBodyGyroscope-meanFreq()-Y               
* frequencyBodyGyroscope-meanFreq()-Z               
* frequencyBodyAccelerometerMagnitude-mean()        
* frequencyBodyAccelerometerMagnitude-std()         
* frequencyBodyAccelerometerMagnitude-meanFreq()    
* frequencyBodyAccelerometerJerkMagnitude-mean()    
* frequencyBodyAccelerometerJerkMagnitude-std()     
* frequencyBodyAccelerometerJerkMagnitude-meanFreq()
* frequencyBodyGyroscopeMagnitude-mean()            
* frequencyBodyGyroscopeMagnitude-std()             
* frequencyBodyGyroscopeMagnitude-meanFreq()        
* frequencyBodyGyroscopeJerkMagnitude-mean()        
* frequencyBodyGyroscopeJerkMagnitude-std()         
* frequencyBodyGyroscopeJerkMagnitude-meanFreq()




