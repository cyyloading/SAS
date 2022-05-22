/*
Only one WHERE statement can appear in each PRINT procedure
WHERE statement works for both character and numeric variables

any comparison operators (<,=,>,^=,>=,<=), 
any logical operators (AND OR NOT),
CONTAINS operator to select observations that include the specified substring
CONTAINS is equivalent to '?'
*/

DATA Patient;
  INFILE '/home/u4029796/SASClass/PatientData.txt';  *file location;
  INPUT subj 1-4 name $ 5-23 sex age hosp $ visit type expense;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - where age>45";
  where age>45;
RUN;

PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - where age>45 and visit>10";
  where age>45 AND visit>10;
RUN;


* character variables are case sensitive in quotations;
PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - where name contains 'Tri'";
  where name contains 'Tri';
RUN;

*contains is equal to ?;
PROC PRINT DATA=Patient;
  TITLE "Basic Report of Patients - where name contains 'Tri'";
  where name ? 'Tri';
RUN;