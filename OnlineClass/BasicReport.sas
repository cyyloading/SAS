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


*remove the observation # (Obs) column;
PROC PRINT DATA=Patient NOOBS;
  TITLE "Basic Report of Patients";
RUN;