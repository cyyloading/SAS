/*
descriptive label can be placed in data procedure and print procedure
*/

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  title "Basic Report of Patients";
RUN;

PROC PRINT DATA=Patient label;
  title "Basic Report of Patients - with label";
  label name='Name of Patient';
  label sex='Gender of Patient';
  label type='Type of Diagnosis';
  label visit='number of visits';
RUN;

* Or (only one semicolon);
PROC PRINT DATA=Patient label;
  title "Basic Report of Patients - with label";
  label name='Name of Patient'
        sex='Gender of Patient'
        type='Type of Diagnosis'
        visit='number of visits';
RUN;


* split 'name of patient' in different lines;
PROC PRINT DATA=Patient label split='/';
  title "Basic Report of Patients - with label";
  label name='Name/ of/ Patient'
        sex='Gender/ of/ Patient'
        type='Type of Diagnosis'
        visit='number of visits';
RUN;