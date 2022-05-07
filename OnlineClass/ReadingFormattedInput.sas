/*
Read formatted input
*/
DATA temp1;
  INPUT F_init $ 6 F_name $ 6-16 L_name $ 18-23
        weight 31-32 height 27-29 salary 43-47;
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp1;
 TITLE 'Formatted data set 1';
RUN;



/*
@n column pointer control and standard numeric informats
to read three numeric variables
*/

DATA temp2;
  INPUT @1 subj 4. @27 height 3. @31 weight 2.; 
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp2;
 TITLE 'Formatted data set 2';
RUN;

* Change the order shown in output of weight and height;
DATA temp3;
  INPUT @1 subj 4. @31 weight 2. @27 height 3.; 
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp3;
 TITILE 'Formatted data set 3';
RUN;

* Read character variables name using $;
DATA temp4;
  INPUT @6 Name $18. @1 subj 4. @31 weight 2. @27 height 3.; 
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp4;
 TITILE 'Formatted data set 4';
RUN;

* Read data with date [mmddyy8.] and salary [Comma5.];
DATA temp5;
  INPUT @1 subj 4. @6 Name $18. @6 F_name $11. @18 L_name $6.
        @31 weight 2. @27 height 3.  
        @34 birthday mmddyy8. @43 salary Comma5.;
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp5;
 TITLE 'Formatted data set 5';
RUN;



* using relative pointer to read data with date [mmddyy8.] and salary [Comma5.];
DATA temp6;
  INPUT @1 subj 4. @6 Name $18. @31 weight 2. @27 height 3.  
        +4 birthday mmddyy8. +1 salary Comma5.;  *birthday is after height with 4 characters, salary is after birthdat with 1 blank;
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp6;
 TITLE 'Formatted data set 6';
RUN;


DATA temp7;
  INPUT @1 subj 4. @6 Name $18. @31 weight 2. @27 height 3.  
        +4 birthday mmddyy8. +1 salary Comma5.;  *birthday is after height with 4 characters, salary is after birthdat with 1 blank;
  FORMAT birthday mmddyy8. salary comma5.;
  DATALINES;
1011 Alia         Bhatt 2 165 55 11/12/90 2,000
1012 Maria        Smith 1 170 58 10/22/91 1,500
1111 Thomas       Jones 2     59 08/13/92 1,850
1121 Benedictine Arnold 2 174 90 03/02/89 1,200
1301              Gupta 1 163 72 12/30/90 2,500
;
RUN;

PROC PRINT DATA=temp7;
 TITLE 'Formatted data set 7';
RUN;