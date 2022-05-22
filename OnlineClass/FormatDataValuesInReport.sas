/*
display the expense in dollor, subj in comma format
*/

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  title "Basic Report of Patients";
RUN;


PROC PRINT DATA=Patient;
  title "Basic Report of Patients - format";
  format subj comma5.; *5 means length including digits, comma sign;
  format expense Dollar8.2; *8 means length including digits,$ sign, dot sign, 2 means 2 decimal;  
RUN;

* same as;
PROC PRINT DATA=Patient;
  title "Basic Report of Patients - format";
  format subj comma5.
         expense Dollar8.2; 
RUN;