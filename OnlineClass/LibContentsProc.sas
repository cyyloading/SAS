PROC CONTENTS DATA=stat._all_ nods;  * all data sets;
RUN;

PROC CONTENTS DATA=stat.Punjab; * specific data set;
RUN;


PROC CONTENTS DATA=stat.Punjab VARNUM; * apprear all vars in order as they appear in data set;
RUN;


PROC CONTENTS DATA=SASHELP._all_ nods;
RUN;