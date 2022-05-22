/* 
Gender: 1=Male, 2=Female
Type: 101=Gynecology, 102=Ayurveda, 103=Cardiology
Expense: Medical charges in Dollars
*/

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
RUN;

* Use FIRSTOBS and OBS to select specific obs;
PROC PRINT DATA=Patient (FIRSTOBS=2 obs=7);
  TITLE "Basic Report of Patients";
RUN;


* Only Use FIRSTOBS: from firstobs to the last observation;
PROC PRINT DATA=Patient (FIRSTOBS=5);
  TITLE "Basic Report of Patients";
RUN;


* Only Use OBS: from the first observation to OBS;
PROC PRINT DATA=Patient (OBS=5);
  TITLE "Basic Report of Patients";
RUN;

/*
if you don't use the DATA= option to tell SAS which data set 
to print, SAS will print the most recent data set.
*/
PROC PRINT;
RUN;