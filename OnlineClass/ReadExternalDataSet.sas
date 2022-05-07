/*
Read data from external data set
If target library doesn't exist pd data set, can run 'PermanentDataset.sas' to creat
*/

LIBNAME stat '/home/u4029796/SASClass';
DATA temp1;
  SET stat.PD;
RUN;

PROC PRINT DATA=temp1;
 TITLE 'Read external data';
RUN;