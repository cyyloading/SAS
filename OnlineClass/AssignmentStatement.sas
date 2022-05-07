DATA Grades1;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades1;
RUN;


* extract specific columns in order using var statement;
DATA Grades2;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades2;
  var name exam1 exam2 exam3 exam4 project finalexam;
RUN;



DATA Grades3;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades3;
  var name project finalexam exam1 exam2 exam3 exam4;
RUN;


* Calculate the total score that is the sum of all exams' score;
DATA Grades4;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  totalscores = exam1 + exam2 + exam3 + exam4 + exam5 + project + finalexam;
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades4;
  var name exam1 exam2 exam3 exam4 project finalexam totalscores;
RUN;


DATA Grades5;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  exam2 = exam2 + 1;
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades5;
  var name exam1 exam2 exam3 exam4 project finalexam ;
RUN;