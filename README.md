# SAS
Some practice examples I learned from a online SAS class in Udemy (from zero basic)


Three different styles of input that are available to us in SAS:
1. Column input: allows you to read data values that are entered in fixed columns.
2. List input: allows you to read the data by simply listing the variable names in the INPUT statement. At least one space (or character) must occur between each value in the data set.
3. Formatted input: allows you to read numeric data containing special characters, such as dates and dollar amounts.

Three default SAS libraries:
1. WORK: a temporary library for files that you do not want to be saved from session to session.
2. SASHELP: a permanent library that contains sample data for practicing or illustrating purpose.
3. SASUSER: a permanent library that contains SAS files, you can use it for personal use.


class1:
1. use DATALINES statement to read instream data.
2. use INFILE statement to read the data from a raw data file (in .dat or .txt format).
3. use SET statement to read the data from another SAS data set.
4. use INPUT statement with propoer column numbers to read data arranged in well defined columns.
5. use two-level name in the DATA statement for creating permanent SAS data set.
6. use one-level name in the DATA statement for creating temporary SAS data set.

class2:
Restrictions on data read by List input:
1. field must be separated by at least one blank (or other delimiter).
2. field must be read in order from left to right.
3. cannot skip or re-read fields.
4. missing values must be represented by a place holder such as period.
5. character values cannot contain embedded blanks.
6. the default length of character values is 8 bytes. A longer value is truncated when it is written to the data set.
7. data must be in standard character or numeric format.

class3:
Formatted input: is capable of reading non standard numeric values, eg: 3.8%(percentage), 02/21/2022(date), $23.4(currency).
1. standard numeric data: including number, decimal point, scientific notation with (E),(+),(-). Eg: 29, 3.54, -2, +53, 318E-2
2. non standard numeric data: including ($),(%),(,), date and time value, data in fraction, binary/hexadecimal form of number.

class4:
PRINT procedure to print data in various format.
1. apply title or footnote to a printed page of SAS output.
2. use FIRSTOBS= and OBS= option to print a subset of the observations.
3. use VAR statement to print a subset of the variables.
4. use NOOBS option to suppress the printing of the observation number.
5. use LABEL option to print the variable labels.
6. use SPLIT= option to split labels used as variable headings.
7. use ID statement to emphasize key variable(s).
8. use DOUBLE option to double-space the output.
9. use FORMAT statement to print a variable in a previously specified format.
10. use WHERE statement to print only a subset of the data, namely the subset meeting the condition specified in the WHERE statement.
11. use SUM statement to specify the sum of certain variables.
12. use BY statement to print observations in groups based on the values of the different BY groups.
13. use UNIFORM option to make sure the columns of data line up from one report to the next.
14. use SORT procedure to sort the data in the SAS data sets.
