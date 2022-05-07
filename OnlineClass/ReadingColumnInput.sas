/* 
Read column input example 1.
Column input:
1. Spaces are not always required between the data values to be read by column input
2. Column input allows fields to be skipped altogether or to be read in any order
3. Can skip placing placeholder in data value for missing value in column input
*/

DATA temp0;
  INPUT subj 1-4 name $ 6-23
        gender 25 height 27-29 weight 31-32;
  DATALINES;
1011 Alia Bhatt         2 165 55
1012 Maria Smith        1 170 58
1111 Thomas Jones       2 168 59
1121 Benedictine Arnold 2 174 90
1301 Saurav Gupta       1 163 72
;

PROC PRINT DATA=temp0;
  TITLE 'Column Input data0';
RUN;


/*
Read column input example 2.
*/

DATA temp1;
  INPUT F_init $ 6 F_name $ 6-16 L_name $ 18-23
        weight 31-32 height 27-29;
  DATALINES;
1011 Alia         Bhatt 2 165 55
1012 Maria        Smith 1 170 58
1111 Thomas       Jones 2     59
1121 Benedictine Arnold 2 174 90
1301              Gupta 1 163 72
;

PROC PRINT DATA=temp1;
  TITLE 'Column Input data1';
RUN;