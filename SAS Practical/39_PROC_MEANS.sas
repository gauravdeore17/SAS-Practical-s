              * PROC MEANS ;

/*In SAS, PROC MEANS is a procedure used for calculating summary statistics for variables in a 
dataset. The "MEANS" in PROC MEANS stands for "means," which refers to the arithmetic mean or 
average. However, PROC MEANS can also calculate other summary statistics such as sums, minimums, 
maximums, standard deviations, and percentiles.

PROC MEANS provides a comprehensive summary of the data in terms of its central tendency, variability, 
and distribution. It generates a report that includes statistics for one or more variables, grouped by 
specified categorical variables. The procedure allows you to specify various options to customize the 
output and perform calculations based on your specific requirements.

*/

/* Create a sample dataset */
data mydata;
  input ID Score;
  datalines;
1 85
2 90
3 78
4 92
5 88
;

/* Calculate summary statistics using PROC MEANS */
proc means data=mydata;
  var Score;
run;



*1.Calculate basic summary statistics:   ;
/*calculate descriptive statistics for Weight variable*/
proc summary data=mylib.cars;
   var Weight;
   output out=summaryWeight;
run;

/*print output dataset*/
proc print data=summaryWeight;


*2.Calculate statistics by a grouping variable:   ;
/*calculate descriptive statistics for Weight grouped by Species*/
proc summary data=mylib.cars;;
   var Weight;
   class Species;
   output out=summaryWeightSpecies;
run;

/*print output dataset*/
proc print data=summaryWeightSpecies;


*3.Calculate additional statistics:  ;
proc means data=your_dataset;
  var variable;
  output out=summary_dataset sum= sum_variable median= median_variable;
run;


*4.Calculate statistics for specific percentiles:   ;
proc means data=your_dataset p5 p25 p50 p75 p95;
  var variable;
run;


*5.Calculate weighted statistics:   ;
proc means data=your_dataset;
  var variable;
  weight weight_variable;
run;

