# Content
the tidydata.txt contains 180 rows and 68 columns. Each row has averaged variables for each subject and each activity.

# Files Used from the zip
* 'features.txt'
* 'activity_labels.txt'
* 'subject_train.txt'
* 'x_train.txt'
* 'y_train.txt'
* 'subject_test.txt'
* 'x_test.txt'
* 'y_test.txt'

# Description of Data.
the columns containing -mean() = the mean value
the columns containing -std()= standard deviation

For each Record the following has ben measured:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope.
* A 561-feature vector with time and frequency domain variables.
* Its activity label.
* An identifier of the subject who carried out the experiment.

The data were averaged based on subject and activity group.
Subject column is numbered sequentially from 1 to 30. Activity column has 6 types as listed below:

WALKING,
WALKING_UPSTAIRS,
WALKING_DOWNSTAIRS,
SITTING,
STANDING,
LAYING

# Definitions of Variables
activity_label = factor, 
subjec = integer, 
rest = numeric, 

# 66 variables of measurement (+ activity_label and subject)
1. "tBodyAcc-mean()-X"
2. "tBodyAcc-mean()-Y"
3. "tBodyAcc-mean()-Z"
4. "tBodyAcc-std()-X"
5. "tBodyAcc-std()-Y"
6. "tBodyAcc-std()-Z"
7. "tGravityAcc-mean()-X"
8. "tGravityAcc-mean()-Y"
9. "tGravityAcc-mean()-Z"
10. "tGravityAcc-std()-X"
11. "tGravityAcc-std()-Y"
12. "tGravityAcc-std()-Z"
13. "tBodyAccJerk-mean()-X"
14. "tBodyAccJerk-mean()-Y"
15. "tBodyAccJerk-mean()-Z"
16. "tBodyAccJerk-std()-X"
17. "tBodyAccJerk-std()-Y"
18. "tBodyAccJerk-std()-Z"
19. "tBodyGyro-mean()-X"
20. "tBodyGyro-mean()-Y"
21. "tBodyGyro-mean()-Z"
22. "tBodyGyro-std()-X"
23. "tBodyGyro-std()-Y"
24. "tBodyGyro-std()-Z"
25. "tBodyGyroJerk-mean()-X"
26. "tBodyGyroJerk-mean()-Y"
27. "tBodyGyroJerk-mean()-Z"
28. "tBodyGyroJerk-std()-X"
29. "tBodyGyroJerk-std()-Y"
30. "tBodyGyroJerk-std()-Z"
31. "tBodyAccMag-mean()"
32. "tBodyAccMag-std()"
33. "tGravityAccMag-mean()"
34. "tGravityAccMag-std()"
35. "tBodyAccJerkMag-mean()"
36. "tBodyAccJerkMag-std()"
37. "tBodyGyroMag-mean()"
38. "tBodyGyroMag-std()"
39. "tBodyGyroJerkMag-mean()"
40. "tBodyGyroJerkMag-std()"
41. "fBodyAcc-mean()-X"
42. "fBodyAcc-mean()-Y"
43. "fBodyAcc-mean()-Z"
44. "fBodyAcc-std()-X"
45. "fBodyAcc-std()-Y"
46. "fBodyAcc-std()-Z"
47. "fBodyAccJerk-mean()-X"
48. "fBodyAccJerk-mean()-Y"
49. "fBodyAccJerk-mean()-Z"
50. "fBodyAccJerk-std()-X"
51. "fBodyAccJerk-std()-Y"
52. "fBodyAccJerk-std()-Z"
53. "fBodyGyro-mean()-X"
54. "fBodyGyro-mean()-Y"
55. "fBodyGyro-mean()-Z"
56. "fBodyGyro-std()-X"
57. "fBodyGyro-std()-Y"
58. "fBodyGyro-std()-Z"
59. "fBodyAccMag-mean()"
60. "fBodyAccMag-std()"
61. "fBodyBodyAccJerkMag-mean()"
62. "fBodyBodyAccJerkMag-std()"
63. "fBodyBodyGyroMag-mean()"
64. "fBodyBodyGyroMag-std()"
65. "fBodyBodyGyroJerkMag-mean()"
66. "fBodyBodyGyroJerkMag-std()"

