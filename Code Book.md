Code Book
========================================================

This code book describes the variables for the dataset df\_tidy2.
This dataset is generated in the script *run\_analysis.R*


**UNITS**

The units of meausure of the variables are divided by its range (gyroscope, entropy, etc) to normalise it.
When units are divided  by the same units, the units are cancelled are cancelled out leaving only a ratio.

**VARIABLES**
Each variable consists of the following layout: <1><2><3><4><5><6>
where:

1: time signal (t) or frequency signal (f) 
2: body or gravity
3: acceleration (acc) of gyroscopic (gyro)
4: jerk or magnitude (mag) or jerk magnitude (jerkmag)
5: mean or standard deviation (std)
6: direction X, Y or Z

The above layout is expanded with the layout <1> - <2><3> - <4> - <5> - <6> to break up the individual pieces

See the features_info.txt in the *UCI HAR Dataset* folder for more details.

The df_tidy2 dataset is filtered with columns for mean and standard deviation only. 

Variabels in df_tidy2:
- tbodyacc_mean_x = timesignal - body acceleration - mean value - direction x
- tbodyacc_mean_y = timesignal - body acceleration - mean value - direction y
- tbodyacc_mean_z = timesignal - body acceleration - mean value - direction z
- tbodyacc_std_x = timesignal - body acceleration - standard deviation - direction x
- tbodyacc_std_y = timesignal - body acceleration - standard deviation - direction y
- tbodyacc_std_z = timesignal - body acceleration - standard deviation - direction z
- tgravityacc_mean_x = timesignal - gravity acceleration - mean value - direction x
- tgravityacc_mean_y = timesignal - gravity acceleration - mean value - direction y
- tgravityacc_mean_z = timesignal - gravity acceleration - mean value - direction z
- tgravityacc_std_x = timesignal - gravity acceleration - standard deviation - direction x
- tgravityacc_std_y = timesignal - gravity acceleration - standard deviation - direction y
- tgravityacc_std_z = timesignal - gravity acceleration - standard deviation - direction z
- tbodyaccjerk_mean_x = timesignal - body linear acceleration jerk signal - mean value - direction x
- tbodyaccjerk_mean_y = timesignal - body linear acceleration jerk signal - mean value - direction y
- tbodyaccjerk_mean_z = timesignal - body linear acceleration jerk signal - mean value - direction z
- tbodyaccjerk_std_x = timesignal - body linear acceleration jerk signal - standard deviation - direction x
- tbodyaccjerk_std_y = timesignal - body linear acceleration jerk signal - standard deviation - direction y
- tbodyaccjerk_std_z = timesignal - body linear acceleration jerk signal - standard deviation - direction z
- tbodygyro_mean_x = timesignal - body gyroscope - mean value - direction x
- tbodygyro_mean_y = timesignal - body gyroscope - mean value - direction y
- tbodygyro_mean_z = timesignal - body gyroscope - mean value - direction z
- tbodygyro_std_x = timesignal - body gyroscope - standard deviation - direction x
- tbodygyro_std_y = timesignal - body gyroscope - standard deviation - direction y
- tbodygyro_std_z = timesignal - body gyroscope - standard deviation - direction z
- tbodygyrojerk_mean_x = timesignal - body gyroscope jerk signal - mean value - direction x
- tbodygyrojerk_mean_y = timesignal - body gyroscope jerk signal - mean value - direction y
- tbodygyrojerk_mean_z = timesignal - body gyroscope jerk signal - mean value - direction z
- tbodygyrojerk_std_x = timesignal - body gyroscope jerk signal - standard deviation - direction x
- tbodygyrojerk_std_y = timesignal - body gyroscope jerk signal - standard deviation - direction y
- tbodygyrojerk_std_z = timesignal - body gyroscope jerk signal - standard deviation - direction z
- tbodyaccmag_mean = timesignal - body acceleration - magnitude (Euclidean norm) - mean value
- tbodyaccmag_std = timesignal - body acceleration - magnitude (Euclidean norm) - standard deviation
- tgravityaccmag_mean = = timesignal - gravity acceleration - magnitude (Euclidean norm) - mean value
- tgravityaccmag_std = timesignal - gravity acceleration - magnitude (Euclidean norm) - standard deviation
- tbodyaccjerkmag_mean = timesignal - body linear acceleration jerk signal - magnitude (Euclidean norm) - mean value
- tbodyaccjerkmag_std = timesignal - body linear acceleration jerk signal - magnitude (Euclidean norm) - standard deviation
- tbodygyromag_mean = timesignal - body gyroscope - magnitude (Euclidean norm) - mean value
- tbodygyromag_std = timesignal - body gyroscope - magnitude (Euclidean norm) - standard deviation
- tbodygyrojerkmag_mean = timesignal - body gyroscope jerk signal - magnitude (Euclidean norm) - mean value
- tbodygyrojerkmag_std = timesignal - body gyroscope jerk signal - magnitude (Euclidean norm) - standard deviation
- fbodyacc_mean_x = frequencysignal - body acceleration - mean value - direction x
- fbodyacc_mean_y = frequencysignal - body acceleration - mean value - direction y
- fbodyacc_mean_z = frequencysignal - body acceleration - mean value - direction z
- fbodyacc_std_x = frequencysignal - body acceleration - standard deviation - direction x
- fbodyacc_std_y = frequencysignal - body acceleration - standard deviation - direction y
- fbodyacc_std_z = frequencysignal - body acceleration - standard deviation - direction z
- fbodyaccjerk_mean_x = frequencysignal - body acceleration jerk signal - mean value - direction x
- fbodyaccjerk_mean_y = frequencysignal - body acceleration jerk signal - mean value - direction y
- fbodyaccjerk_mean_z = frequencysignal - body acceleration jerk signal - mean value - direction z
- fbodyaccjerk_std_x = frequencysignal - body acceleration jerk signal - standard deviation - direction x
- fbodyaccjerk_std_y = frequencysignal - body acceleration jerk signal - standard deviation - direction y
- fbodyaccjerk_std_z = frequencysignal - body acceleration jerk signal - standard deviation - direction z
- fbodygyro_mean_x = frequencysignal - body gyroscope - mean value - direction x
- fbodygyro_mean_y = frequencysignal - body gyroscope - mean value - direction y
- fbodygyro_mean_z = frequencysignal - body gyroscope - mean value - direction z
- fbodygyro_std_x = frequencysignal - body gyroscope - standard deviation - direction x
- fbodygyro_std_y = frequencysignal - body gyroscope - standard deviation - direction y
- fbodygyro_std_z = frequencysignal - body gyroscope - standard deviation - direction z
- fbodyaccmag_mean = frequencysignal - body acceleration - magnitude (Euclidean norm) - mean value
- fbodyaccmag_std = frequencysignal - body acceleration - magnitude (Euclidean norm) - standard deviation
- fbodyaccjerkmag_mean = frequencysignal - body acceleration jerk signal - magnitude (Euclidean norm) - mean value
- fbodyaccjerkmag_std = frequencysignal - body acceleration jerk signal - magnitude (Euclidean norm) - standard deviation
- fbodygyromag_mean = frequencysignal - body gyroscope - magnitude (Euclidean norm) - mean value
- fbodygyromag_std = frequencysignal - body gyroscope - magnitude (Euclidean norm) - standard deviation
- fbodygyrojerkmag_mean = frequencysignal - body gyroscope jerk signal - magnitude (Euclidean norm) - mean value
- fbodygyrojerkmag_std = frequencysignal - body gyroscope jerk signal - magnitude (Euclidean norm) - standard deviation