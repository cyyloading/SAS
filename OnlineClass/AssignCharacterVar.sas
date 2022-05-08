/*
Create a character variable to indicate whether student pass the exam,
it will be 'passed' if overall avgtotalscore > 80, 'failed' otherwise.
*/

DATA Grades1;
  input subj 1-4 name $ 5-23 sex exam1 exam2 exam3 exam4 exam5 project finalexam;
  avgscores = mean(exam1,exam2,exam3,exam4,exam5,project,finalexam);
  if avgscores<80 then result='Failed';
  else result='Passed';
  DATALINES;
1011 Alia         Bhatt 2 100 65 83 84  99 91  96
1012 Maria        Smith 1  78 82 86  . 100 95  97
1111 Thomas       Jones 2  88 81 96 69  91 90  98
1121 Benedictine Arnold 2  68 82 82 89  89 93  99
1301 Trisha       Gupta 1  51 69 79 59  85 64 100
;
RUN;

PROC PRINT DATA=Grades1;
  var name avgscores result;
RUN;