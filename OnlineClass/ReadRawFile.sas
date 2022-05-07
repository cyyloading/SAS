/*
Attempt to read the data stored in a raw data file.
Excel is not raw data file.
*/

DATA ReadRawFile;
  INFILE '/home/u4029796/SASClass/data.dat';  *file location;
  INPUT subject 1-4 gender 6 height 8-10 weight 12-13 blood $ 15;
RUN;

PROC PRINT DATA=ReadRawFile;
  TITLE 'Output dataset: data';
RUN;



/*
The output of following code is same as the above
*/

FILENAME stud '/home/u4029796/SASClass/data.dat';  *file location;
DATA ReadRawFile1;
  INFILE stud;
  INPUT subject 1-4 gender 6 height 8-10 weight 12-13 blood $ 15;
RUN;

PROC PRINT DATA=ReadRawFile1;
  TITLE 'Output dataset: data1';
RUN;