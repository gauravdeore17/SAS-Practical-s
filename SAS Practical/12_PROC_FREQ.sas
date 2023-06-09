/* proc freq data=mylib.cars; */
/* TABLES owner; */
/* run; */

/* This proc freq method is usde to check the frequency of the perticular values in the column
or a row and then it will print the how many times the value does occurs. */

/* We can also use the options in it for example (name/nopercent nocum) */

proc freq data=mylib.cars;
TABLES owner/nopercent nocum;
run;

proc print data=mylib.cars;
run;

* 2 Dimensional Frequency;
proc freq data=mylib.cars;
tables owner * year/nopercent nocum;
run;
* we need to add astrict to get the table of the frequency of the variables ;

* Using Where Clause;
proc freq data=mylib.cars;
tables owner * year/nopercent nocum;
where selling_price>=13000;
run;

/* The frequency procudure shows the output table by using the table keyword on the program */

 