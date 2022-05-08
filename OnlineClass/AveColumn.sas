DATA my_data;
  input MyColumn;
  DATALINES;
1
2
3
4
5
;
RUN;


PROC SQL;
    select avg(MyColumn) as Avg_MyColumn
    from my_data;
QUIT;


PROC MEANS DATA=my_data;
    var Mycolumn;
RUN;


PROC MEANS DATA=my_data mean;
    var Mycolumn;
RUN;



