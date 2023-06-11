    * Creating a Table like Pivot ;

/*
   In SAS, you can create pivot tables using the PROC TABULATE or PROC SQL procedures. 
These procedures allow you to summarize and cross-tabulate data in a tabular format, 
similar to pivot tables in other software tools.
*/

data my_data;
    input store $ sales returns;
    datalines;
A 10 2
A 7 0
A 7 1
A 8 1
A 6 0
B 10 2
B 14 5
B 13 4
B 9 0
B 5 2
C 12 1
C 10 1
C 10 3
C 12 4
C 9 1
;
run;


proc print data=my_data;
run;

/*create pivot table to summarize sum of sales and returns by store*/
proc tabulate data=my_data;
    class store;
    var sales returns;
    table store, sales returns;
run;

/*create pivot table to summarize mean of sales and returns by store*/
proc tabulate data=my_data;
    class store;
    var sales returns;
    table store, sales*Mean returns*Mean;
run;
