/*The PROC APPEND statement in SAS is used to append one or more datasets 
together. Here's an example code demonstrating the usage of PROC APPEND: */
/* Create sample datasets */
data dataset1;
  input id name $;
  datalines;
1 John
2 Jane
;
run;

data dataset2;
  input id name $;
  datalines;
3 Alice
4 Bob
;
run;

/* Append datasets */
proc append base=dataset1 data=dataset2;
run;

/* Output */
proc print data=dataset1;
run;
