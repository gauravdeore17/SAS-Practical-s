   *    PROC TRANSPOSE   ;

/*
In SAS, you can transpose data using the PROC TRANSPOSE procedure. The PROC TRANSPOSE 
procedure restructures your data by converting columns to rows or rows to columns.
*/

/* Create a sample dataset */
data test;
  input ID Var1 Var2 Var3;
  datalines;
1 10 20 30
2 40 50 60
3 70 80 90
;

/* Transpose the data */
proc transpose data=test out=transposed;
  by ID;
  var Var1 Var2 Var3;
run;

/* View the transposed data */
proc print data=transposed;
run;
