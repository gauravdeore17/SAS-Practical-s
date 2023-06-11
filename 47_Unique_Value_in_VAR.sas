     *  Count the unique values in the variable ;


* To count the unique values in a variable in SAS, you can use the PROC FREQ procedure or the PROC SQL ;

*Using PROC FREQ:   ;

*Example 1: ;
/* Example dataset */
data mydata;
  input variable;
  datalines;
1
2
3
1
2
;
run;

/* it will Count unique values using PROC FREQ */
proc freq data=mydata;
  tables variable / noprint out=unique_counts(keep=variable count);
run;

/*it will Display the unique values and their counts */
proc print data=unique_counts;
run;

*Example 2: ;
proc print data=mylib.cars;
run;

proc freq data=mylib.cars;
tables owner;
run;

proc sql;
select count(distinct owner) as owner 
from mylib.cars;
quit;


*Using PROC SQL:  ;

/* Example dataset */
data mydata;
  input variable;
  datalines;
1
2
3
1
2
;
run;

/* Count unique values using PROC SQL */
proc sql;
  create table unique_counts as
  select variable, count(*) as count
  from mydata
  group by variable;
quit;

/* Display the unique values and their counts */
proc print data=unique_counts;
run;
     *  Count the unique values in the variable ;


* To count the unique values in a variable in SAS, you can use the PROC FREQ procedure or the PROC SQL ;

*Using PROC FREQ:   ;

*Example 1: ;
/* Example dataset */
data mydata;
  input variable;
  datalines;
1
2
3
1
2
;
run;

/* it will Count unique values using PROC FREQ */
proc freq data=mydata;
  tables variable / noprint out=unique_counts(keep=variable count);
run;

/*it will Display the unique values and their counts */
proc print data=unique_counts;
run;

*Example 2: ;
proc print data=mylib.cars;
run;

proc freq data=mylib.cars;
tables owner;
run;

proc sql;
select count(distinct owner) as owner 
from mylib.cars;
quit;


*Using PROC SQL:  ;

/* Example dataset */
data mydata;
  input variable;
  datalines;
1
2
3
1
2
;
run;

/* Count unique values using PROC SQL */
proc sql;
  create table unique_counts as
  select variable, count(*) as count
  from mydata
  group by variable;
quit;

/* Display the unique values and their counts */
proc print data=unique_counts;
run;
