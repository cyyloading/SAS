DATA Grade1;
  input subj 1-4 name $ 5-23 result $;
  
  if result='Passed' then status='P';
  else if result='Failed' then status='F';
  else if result='Invali' then status='I';
  
  DATALINES;
1011 Alia         Bhatt Passed
1012 Maria        Smith Invali
1111 Thomas       Jones PasSed
1121 Benedictine Arnold FailEd
1301 Trisha       Gupta PASSED
;
RUN;

PROC PRINT DATA=Grade1;
  var name result status;
RUN;



DATA Grade2;
  input subj 1-4 name $ 5-23 result $;
  
  if upcase(result)='PASSED' then status='P';
  else if upcase(result)='FAILED' then status='F';
  else if upcase(result)='INVALI' then status='I';
  
  DATALINES;
1011 Alia         Bhatt Passed
1012 Maria        Smith Invali
1111 Thomas       Jones PasSed
1121 Benedictine Arnold FailEd
1301 Trisha       Gupta PASSED
;
RUN;

PROC PRINT DATA=Grade2;
  var name result status;
RUN;



DATA Grade3;
  input subj 1-4 name $ 5-23 result $;
  
  if lowcase(result)='passed' then status='P';
  else if lowcase(result)='failed' then status='F';
  else if lowcase(result)='invali' then status='I';
  
  DATALINES;
1011 Alia         Bhatt Passed
1012 Maria        Smith Invali
1111 Thomas       Jones PasSed
1121 Benedictine Arnold FailEd
1301 Trisha       Gupta PASSED
;
RUN;

PROC PRINT DATA=Grade3;
  var name result status;
RUN;