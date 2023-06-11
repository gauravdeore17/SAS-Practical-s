       * PROC UNIVARIATE ;

/*
In SAS, the PROC UNIVARIATE procedure is used for univariate analysis, which involves 
examining the distribution and summary statistics of a single variable. It provides a 
comprehensive set of descriptive statistics, graphical displays, and tests for assessing 
the characteristics of a variable.

Here's the basic syntax for using PROC UNIVARIATE in SAS:

scss
Copy code
PROC UNIVARIATE DATA=input_dataset;
   VAR variable(s)
RUN;

NOTE:

  DATA: Specifies the input dataset containing the variable(s) to be analyzed.
  VAR: Specifies the variable(s) to be analyzed. You can include multiple variables separated by spaces.
  
  You can include additional options and statements to customize the analysis performed by PROC UNIVARIATE. 
Some commonly used options include HISTOGRAM, CDFPLOT, QQPLOT, MOMENTS, BOXPLOT, and TESTNORMAL. These 
options control the types of plots and statistics generated.

*/

proc univariate data = mylib.cars;
var selling_price;
run;