/*
Numeric functions:
x=sum(x,y,z)    the sum of x,y,z
x=mean(x,y,z)   the mean of x,y,z
x=round(x,1)    round x to the specified unit
x=log(x)        the log(base e) of x
x=lag(x)        the value of x in the previous observation
x=dif(x)        the difference between the values of x in the current and previous observations
x=n(x)          the number of non-missing values of x
x=nmiss(x)      the number of missing values of x
*/


* Calculate the total score using SUM function that is the sum of all exams' score;
* SUM function will ignore the missinf value;
DATA Grades1;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  totalscores = sum(exam1,exam2,exam3,exam4,exam5,project,finalexam);
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades1;
  var name exam1 exam2 exam3 exam4 project finalexam totalscores;
RUN;


* Calculate average of scores;
DATA Grades2;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  avgscores = (exam1+exam2+exam3+exam4+exam5+project+finalexam)/7;
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades2;
  var name exam1 exam2 exam3 exam4 project finalexam avgscores;
RUN;


DATA Grades3;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  avgscores = mean(exam1,exam2,exam3,exam4,exam5,project,finalexam);
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades3;
  var name exam1 exam2 exam3 exam4 project finalexam avgscores;
RUN;


* Extract first few digital numbers from a given number: using INT funciton;
DATA Grades4;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  seat = int(subj/10);
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades4;
  var seat name exam1 exam2 exam3 exam4;
RUN;


* Extract last few digital numbers from a given number: using MOD funciton;
DATA Grades5;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  get = mod(subj,1000);
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades5;
  var get name exam1 exam2 exam3 exam4;
RUN;



* Nested functions: round the average score using nested unit;
DATA Grades6;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  avgscores = mean(exam1,exam2,exam3,exam4,exam5,project,finalexam);
  roundavg_1 = round(avgscores,1);
  roundavg_2 = round(avgscores,0.5);
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades6;
  var name avgscores roundavg_1 roundavg_2;
RUN;
