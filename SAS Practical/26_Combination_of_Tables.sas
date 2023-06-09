* PDV(Programming Data Vector):Logical area in memory where sas builds a datasets.;

/* Sample data */
data table1;
  input id name $;
  datalines;
1 John
2 Jane
;

data table2;
  input id name $;
  datalines;
3 Alice
4 Bob
;

/* Combine tables vertically */
data combined_table;
  set table1 table2;
run;

/* Output */
proc print data=combined_table;
run;
