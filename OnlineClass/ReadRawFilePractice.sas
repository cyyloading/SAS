/*
Attempt to read the data stored in a raw data file.
Excel is not raw data file.
*/

DATA Assignment1;
  INFILE '/home/u4029796/SASClass/assignment1.txt';  *file location;
  INPUT Town $ 1-10 Zip 12-17 day 20-21 month 23-24 
        year 26-29 temperature 32-33;
RUN;

PROC PRINT DATA=Assignment1;
  TITLE "Punjab's city temperature";
RUN;



/* 
month $
*/
DATA Assignment2;
  INFILE '/home/u4029796/SASClass/assignment1.txt';  *file location;
  INPUT Town $ 1-10 Zip 12-17 day 20-21 month $ 23-24 
        year 26-29 temperature 32-33;
RUN;

PROC PRINT DATA=Assignment2;
  TITLE "Punjab's city temperature";
RUN;
