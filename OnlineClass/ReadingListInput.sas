/* 
Read list input example 1.
*/
DATA temp1;
  INPUT subj name $ sex height weight;
  DATALINES;
1011 Alia 2 165 55
1012 Maria 1 170 58
1111 Thomas 2 152 59
1121 Benedict 2 174 90
1301 Saurav 1 163 72
;
RUN;

PROC PRINT DATA=temp1;
  TITLE 'List input data set';
RUN;


DATA temp2;
  INPUT subj name $ sex height weight;
  DATALINES;
1011 Alia 2 165 55
1012 Maria 1 170 58
1111 Thomas . 152 59
1121 Benedict 2 174 90
1301 Saurav 1 163 72
;
RUN;

PROC PRINT DATA=temp2;
  TITLE 'List input data set';
RUN;


DATA temp3;
  INFILE DATALINES delimiter=',';
  INPUT subj name $ sex height weight;
  DATALINES;
1011,Alia,2,165,55
1012,Maria,1,170,58
1111,Thomas,.,152,59
1121,Benedict,2,174,90
1301,Saurav,.,163,72
;
RUN;

PROC PRINT DATA=temp3;
  TITLE 'List input data set';
RUN;