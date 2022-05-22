DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
RUN;


PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
  ID name;
  SUM visit;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
  WHERE hosp='UP';
  ID name;
  SUM visit;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
  ID name;
  SUM visit expense;
RUN;