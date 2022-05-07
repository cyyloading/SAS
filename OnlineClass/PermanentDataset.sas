LIBNAME stat '/home/u4029796/SASClass';  *library location where the data will be stored to;
DATA stat.PD;
  INPUT subject 1-4 gender 6 height 8-10 weight 12-13 blood $ 15;  *number represents the occupied columns;
  DATALINES;
1011 1 166 90 A
1012 2 169 80 B
1121 1 168 99 D
1122 2 175 70 E
1331 1 164 85 B
;
RUN;

PROC PRINT DATA=stat.PD;   * permanent dataset must use two level name: libname.datasetname 
  TITLE 'Class Example 3: Permanent Dataset';
RUN;