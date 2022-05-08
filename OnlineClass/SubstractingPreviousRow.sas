DATA my_data;
  input subj num1 num2;
  DATALINES;
1 50 30
2 45 5
3 30 15
4 20 10
5 30 40
;
RUN;

DATA test;
 set my_data;
 _n_ = lag(num1);
 if nmiss (_n_) then result = _n_;
 else result = num1 - _n_;
 
 if result=. then rate=0;
 else rate = result/_n_;
RUN;

PROC PRINT DATA=test;
 TITLE 'Substracting from previous row value';
RUN;