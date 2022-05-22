/*
calculate the total sum of visit for each different hosp
*/

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
RUN;



PROC SORT DATA=Patient out=st_Patient;
  BY hosp;
RUN;

PROC PRINT DATA=st_Patient;
  TITLE "Basic Report of Patients - subtotal hosp visit";
  BY hosp;
  SUM visit;
RUN;