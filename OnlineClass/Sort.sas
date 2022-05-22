DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients";
RUN;

*sort patients obs based on hops and age (default ascending);
PROC sort DATA=Patient out=sorted_Patient;
  BY hosp age;  
RUN;

PROC PRINT DATA=sorted_Patient;
  TITLE "Basic Report of Patients - SORT";
RUN;


*sort patients obs based on hops and descending age;
PROC sort DATA=Patient out=ST_Patient1;
  BY hosp DESCENDING age;  
RUN;

PROC PRINT DATA=ST_Patient1;
  TITLE "Basic Report of Patients - SORT";
RUN;


*sort patients obs based on descending hops and descending age;
PROC sort DATA=Patient out=ST_Patient2;
  BY DESCENDING hosp DESCENDING age;  
RUN;

PROC PRINT DATA=ST_Patient2;
  TITLE "Basic Report of Patients - SORT";
RUN;