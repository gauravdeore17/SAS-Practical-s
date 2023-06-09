        * PROC COMPARE in SAS ;
        
/*The PROC COMPARE in SAS is a procedure used to compare the values of variables in two or 
more datasets or SAS data views. It helps identify differences between datasets and provides 
a comprehensive report of the comparisons. The PROC COMPARE procedure is commonly used for data 
validation, quality control, and identifying discrepancies in datasets.

PROC COMPARE
   BASE=dataset1
   COMPARE=dataset2
   OUT=comparison_results
   OUTNOEQUALS
   LISTALL
   TOLERANCE=0.001;
   VAR variable1 variable2;
RUN;

1.BASE specifies the dataset or data view considered as the baseline or reference for comparison.
2.COMPARE specifies the dataset or data view to be compared against the baseline.
3.OUT specifies the name of the output dataset that will contain the comparison results.
4.OUTNOEQUALS suppresses the creation of an output dataset containing the unequal observations.
5.LISTALL lists all observations and variables, even if they are identical in the compared datasets.
6.TOLERANCE specifies the tolerance level for comparing numeric variables. Differences smaller than 
  the tolerance level are considered equal.
7.VAR specifies the variables to be compared. If not specified, PROC COMPARE compares all variables 
  in the datasets.

*/

/* Create two sample datasets for comparison */
data dataset1;
   input ID Score;
   datalines;
1 85
2 92
3 78
;
run;

data dataset2;
   input ID Score;
   datalines;
1 85
2 88
3 78
;
run;

/* Perform the comparison using PROC COMPARE */
proc compare base=dataset1 compare=dataset2 out=comparison_results;
   id ID; /* Specifies the ID variable used for matching observations */
run;
