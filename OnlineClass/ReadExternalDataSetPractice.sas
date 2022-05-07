LIBNAME stat '/home/u4029796/SASClass';
DATA puncpy;
  SET stat.punjab;
RUN;

PROC PRINT DATA=puncpy;
 TITLE 'Read existing Punjab data set';
RUN;