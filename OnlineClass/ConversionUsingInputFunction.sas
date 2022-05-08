DATA Paid1;
  input subj 1-4 name $ 5-23 wage $ days $;
  totalsalary = wage*days;
  DATALINES;
1011 Alia         Bhatt  2100 65 
1012 Maria        Smith  1278 82
1111 Thomas       Jones 2,588 81
1121 Benedictine Arnold  2868 82
1301 Trisha       Gupta 1,151 99
;
RUN;

PROC PRINT DATA=Paid1;
  var name wage days totalsalary;
RUN;


* Convert the character to numeric variable using INPUT function: INPUT(source,informat);
DATA Paid2;
  input subj 1-4 name $ 5-23 wage $ days $;
  totalsalary = INPUT(wage,Comma5.0)*days;
  DATALINES;
1011 Alia         Bhatt  2100 65 
1012 Maria        Smith  1278 82
1111 Thomas       Jones 2,588 81
1121 Benedictine Arnold  2868 82
1301 Trisha       Gupta 1,151 99
;
RUN;

PROC PRINT DATA=Paid2;
  var name wage days totalsalary;
RUN;