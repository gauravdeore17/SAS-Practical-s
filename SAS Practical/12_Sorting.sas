/* data test; */
/* set MYLIB.cars; */
/* run; */

proc sort data=MYLib.cars;
by name;
run;

/*On the sorting technique we can sort the already existed table by using sort method and by 
default it is ascending in nature we can change it by adding the descending keyword.*/

/* if we want to show the data is descending order then we would write the descending keyword 
before the column name. */
proc sort data=MYLIB.cars;
by descending transmission selling_price;
run;

/*In SAS, the NODUPKEY option is used in conjunction with the SORT procedure to eliminate 
duplicate observations based on the values of the variables specified in the BY statement.*/
proc sort data=Mylib.cars nodupkey out=sorted;
by owner;
/* by _all_; */
run;
/* if we try _all_ */
proc sort data=sorted;
by name;
run;

/*a modified data will be stored at the sorted table which is created by the out keyword.*/
