/*
DM "log;clear;output;clear;odsresult;clear";
this statement at the top of program suggests SAS 
to clear any previous log messages from log window,
output from output and result viewer windows
*/


DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  title "Basic Report of Patients";
RUN;

PROC PRINT DATA=Patient DOUBLE;
  title "Basic Report of Patients - double space";
RUN;