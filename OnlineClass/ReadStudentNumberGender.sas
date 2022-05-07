/*
This program reads in a set named Grade for 6 students, 
and print out their student # and gender
*/

OPTIONS NODATE LS=74;
TITLE 'Class Example 1';

DATA Grade;
  INPUT subject gender $ exam1 exam2 hwgrade $;
  DATALINES;
11 M 80 90 A
10 .  . 90 B
12 M 60 98 A
 8 M 80  . C
 7 M 40 95 A
15 M 30 50 D
;
RUN;

PROC PRINT DATA=Grade;
  VAR subject gender;
RUN;

PROC CONTENTS DATA=Grade;
RUN;



/*
Another example with label 
*/

TITLE 'Class Example 2';
DATA BodyIndex;
  INPUT subject name $ height weight score $;
  Label height = 'Height(cm)';
  Label weight = 'Weight(kg)';
  DATALINES;
11 Mohan 180 90 A
10 .      .  90 B
12 Sohab 160 98 A
 8 Sohan 180  . C
 7 Rohan 140 95 A
15 Terry 130 50 D
;
RUN;

PROC CONTENTS DATA=BodyIndex;
RUN;


/*
Another example  
*/

DATA temp1;
  INPUT subject 1-4 gender 6 height 8-10 weight 12-13 blood $ 15;  *number represents the occupied columns;
  DATALINES;
1011 1 166 90 A
1012 2 169 80 B
1121 1 168 99 D
1122 2 175 70 E
1331 1 164 85 B
;
RUN;

PROC PRINT DATA=temp1;
  TITLE 'Class Example 3: temp1 dataset';
RUN;
