/* 
Gender: 1=Male, 2=Female
Type: 101=Gynecology, 102=Ayurveda, 103=Cardiology
Expense: Medical charges in Dollars
*/

Options LS=64 PS=58;

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;


*without ID statement;
PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - ID statement";
  var subj name sex age hosp visit type expense;
RUN;

*with only one ID statement and show the ID again in var;
PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - ID statement";
  ID name;
  var subj name sex age hosp visit type expense;
RUN;

*with two ID and don't show the same ID again in var;
PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - ID statement";
  ID name hosp;
  var subj sex age visit type expense;
RUN;