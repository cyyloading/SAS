/*
Logical operator:
and:  AND   &
or:   OR    |
not:  NOT   ^ or ~
*/

DATA Grades1;
  length result $12.;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  actualavg = mean(exam1,exam2,exam3,exam4,exam5,project,finalexam);
  avgscore = (exam1+exam2+exam3+exam4+exam5+project+finalexam)/7;
  
  if avgscore=. then result='Invalid';  * missing value;
  else if avgscore >= 90 then result='A+';
  else if avgscore >= 88 AND avgscore < 90 then result='A';
  else if avgscore >= 86 AND avgscore < 88 then result='B';
  else if avgscore >= 84 AND avgscore < 86 then result='C';
  else if avgscore < 84 then result='F';
  
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades1;
  var name actualavg avgscore result;
RUN;



DATA Grades2;
  length result $12.;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  actualavg = mean(exam1,exam2,exam3,exam4,exam5,project,finalexam);
  x = (exam1+exam2+exam3+exam4+exam5+project+finalexam)/7;
  
  if x=. then result='Invalid';  * missing value;
  else if 90<=x<=100 then result='A+';
  else if 88<=x<90 then result='A';
  else if 86<=x<88 then result='B';
  else if 84<=x<86 then result='C';
  else if 0<=x<84 then result='F';
  
  avgscore = x;
  
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades2;
  var name actualavg avgscore result;
RUN;




DATA Grades3;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  x = round(((exam1+exam2+exam3+exam4+exam5+project+finalexam)/7),1);
  
  if (exam1<exam2 & exam2<exam3) | (exam3<exam4 and exam4<exam5)
  then y=x+1;
  else y=x;

  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades3;
  var name exam1 exam2 exam3 exam4 exam5 x y;
RUN;