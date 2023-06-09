                * Summary Function ;

/*In SAS, you can use various summary functions to calculate summary 
statistics for your data. Here are some commonly used summary functions 
along with examples of how to use them in SAS:  


1.Numeric Summary Functions:
  SUM: Calculates the sum of numeric values.
  MEAN or AVG: Calculates the mean (average) of numeric values.
  MIN: Returns the minimum value from a column.
  MAX: Returns the maximum value from a column.
  COUNT: Counts the number of non-missing values in a column.
  STD or STDEV: Calculates the standard deviation of numeric values.
  VAR or VARIANCE: Calculates the variance of numeric values.

2.Character Summary Functions:
  COUNTC: Counts the number of non-missing character values in a column.
  MAXC: Returns the maximum character value from a column.
  MINC: Returns the minimum character value from a column.
  CATX: Concatenates character values with a delimiter.

3.Date and Time Summary Functions:
  MIN: Returns the earliest date or time value from a column.
  MAX: Returns the latest date or time value from a column.
  INTCK: Calculates the count of intervals between two date or time values.
  INTNX: Advances a date or time value by a specified interval.

4.Group Summary Functions:
  SUMMARY: Calculates multiple summary statistics for a group of variables.
  MEANS: Calculates means and other statistics by groups.
  FREQ: Calculates frequencies and other statistics by groups.
  UNIVARIATE: Generates various univariate statistics for groups.

*/

*1.SUM: Calculates the sum of numeric values.;
DATA Sales;
    INPUT Product $ Quantity;
    DATALINES;
    A 10
    B 5
    C 8
    D 15
    E 12
    F 20
    ;
RUN;

PROC SQL;
    SELECT SUM(Quantity) AS TotalQuantity
    FROM Sales;
QUIT;


*2.MEAN: Calculates the mean (average) of numeric values.;
DATA Sales;
    INPUT Product $ Price;
    DATALINES;
    A 10
    B 15
    C 20
    D 25
    E 30
    ;
RUN;

PROC SQL;
    SELECT MEAN(Price) AS AveragePrice
    FROM Sales;
QUIT;


*3.MIN: Returns the minimum value from a column.;
DATA Sales;
    INPUT Product $ Price;
    DATALINES;
    A 10.50
    B 8.75
    C 12.30
    D 9.99
    ;
RUN;

PROC SQL;
    SELECT MIN(Price) AS MinimumPrice
    FROM Sales;
QUIT;


*4.MAX: Returns the maximum value from a column.;
DATA Sales;
    INPUT Product $ Price;
    DATALINES;
    A 10
    B 15
    C 5
    D 20
    ;
RUN;

PROC SQL;
    SELECT MAX(Price) AS MaxPrice
    FROM Sales;
QUIT;


*5.COUNT: Counts the number of non-missing values in a column.;
DATA Sales;
    INPUT Product $ Quantity;
    DATALINES;
    A 10
    B .
    C 5
    D 15
    E .
    F 20
    ;
RUN;

PROC SQL;
    SELECT COUNT(Quantity) AS NonMissingQuantity
    FROM Sales;
QUIT;


*6.AVG: Calculates the mean (average) of numeric values. Equivalent to MEAN function.;
DATA Sales;
    INPUT Product $ Price;
    DATALINES;
    A 10
    B 15
    C 20
    D 25
    E .
    F 30
    ;
RUN;

PROC SQL;
    SELECT AVG(Price) AS AveragePrice
    FROM Sales;
QUIT;


*7.STD: Calculates the standard deviation of numeric values.;
DATA Scores;
    INPUT Score;
    DATALINES;
    80
    85
    90
    95
    100
    ;
RUN;

PROC SQL;
    SELECT STD(Score) AS StandardDeviation
    FROM Scores;
QUIT;


*8.VAR: Calculates the variance of numeric values.;
DATA Sales;
    INPUT Product $ Quantity;
    DATALINES;
    A 10
    B 15
    C 20
    D 12
    E 18
    F 25
    ;
RUN;

PROC SQL;
    SELECT VAR(Quantity) AS VarianceQuantity
    FROM Sales;
QUIT;
