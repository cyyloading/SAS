/*
defaul: title means title1, footnote means footnote1
*/

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  title "Basic Report of Patients";
  title2 "-- Report subtitle --";
  footnote1 "Gender: 1=Male, 2=Female";
  footnote3 "Type: 101=Gynecology, 102=Ayurveda, 103=Cardiology";
RUN;