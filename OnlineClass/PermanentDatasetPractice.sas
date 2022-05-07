/*
Read the data into a permanent SAS data set named "Punjab"
into directory "SASClass" by column input.
*/

LIBNAME stat '/home/u4029796/SASClass';  *library location where the data will be stored to;
DATA stat.Punjab;
 INPUT Town $ 1-10 Zip 12-17 day 20-21 month 23-24 
        year 26-29 temperature 32-33;
 DATALINES;
Ludhiana   141101  02 01 2015  52
Amritsar   142001  13 06 2015  28
Bathinda   152875  05  8 2016  43
Patiala    187525  25 07 2015  20
Machhiwara 352852  08  2 2016  05
Mohali     152845  05 05 2016  15
;
RUN;

PROC PRINT DATA=stat.Punjab;
  TITLE 'Punjab data set';
RUN;


/*
Reads month as categorical variable (that is use $ sign),
and then find the difference between two output.
*/
LIBNAME stat '/home/u4029796/SASClass';
DATA stat.Punjab1;
 INPUT Town $ 1-10 Zip 12-17 day 20-21 month $ 23-24 
        year 26-29 temperature 32-33;
 DATALINES;
Ludhiana   141101  02 01 2015  52
Amritsar   142001  13 06 2015  28
Bathinda   152875  05  8 2016  43
Patiala    187525  25 07 2015  20
Machhiwara 352852  08  2 2016  05
Mohali     152845  05 05 2016  15
;
RUN;

PROC PRINT DATA=stat.Punjab1;
  TITLE 'Punjab1 data set';
RUN;