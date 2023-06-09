                        * Date Function in SAS ;

/*   In SAS, there are several date-related functions that can be used to
manipulate and format dates. Here are some commonly used date functions with example code: 
*/


*1.TODAY(): Returns the current date.;
data dates;
format current_date date9.;
current_date= today()-1;
day=day(current_date);
run;
proc print data=dates; 
run;


*2.DATE(): Returns the number of days since January 1, 1960, for a specified date.;
data dates;
format current_date date9.;
current_date= today()-1;
run;
proc print data=dates; 
run;

*3.INTCK(): Calculates the number of intervals between two dates.;
data have;
  input start_date date9. end_date date9.;
  format start_date end_date date9.;
  datalines;
01Jan2023 31Jan2023
01Jan2023 30Jun2023
01Jan2023 31Dec2023
;

data want;
  set have;
  
  /* Calculate the number of months between start_date and end_date */
  num_months = intck('month', start_date, end_date);
  
  /* Output */
  put start_date= date9. end_date= date9. num_months=;
run;



*4.INTNX(): Returns a date that is a specified number of intervals before or after a given date.;
data have;
input start_date date9.;
format start_date date9.;
datalines;
01Jan2023
;

data want;
  set have;
  
  /* Calculate the date 3 months after start_date */
  new_date = intnx('month', start_date, 3);
  
  /* Output */
  put start_date= date9. new_date= date9.;
run;



*5.YEAR(): Extracts the year from a date value.;
data _null_;
specified_date = '31May2021'd;
year_value = year(specified_date);
put year_value=;
run;


*6.MONTH(): Extracts the month from a date value.;
data dates;
format current_date date9.;
current_date= today()-1;
month=month(current_date);
run;
proc print data=dates; 
run;


*7.WEEKDAY(): Extracts the weekday's from a date value.;
data dates;
format current_date date9.;
current_date= today()-1;
weekday=weekday(current_date);
run;
proc print data=dates; 
run;


*8.QUARTER(): Extracts the quarter from a date value.;
data dates;
format current_date date9.;
current_date= today()-1;
Quarter=qtr(current_date);
run;
proc print data=dates; 
run;


*9.Year(): Extracts the year from a date value.;
data dates;
format current_date date9.;
current_date= today()-1;
Year=year(current_date);
run;
proc print data=dates; 
run;


*10.MDY(): Extracts the month day year from a date value.;
data dates;
format current_date date9.;
current_date= today()-1;
next_day=mdy(06,01,2020);
run;
proc print data=dates; 
run;