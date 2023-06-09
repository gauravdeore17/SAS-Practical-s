 * Difference between two casecutive row values in sas ;

data test;
   input id value;
   datalines;
1 10
2 15
3 22
4 18
5 25
;
run;

data final;
   set test;
   diff = value - lag(value);
run;


/* 
   
   LAG Function = The LAG function is used within the data step to retrieve the previous value of 
                  value for each observation. By subtracting value from lag(value), we calculate the 
                  difference between the current value and the previous value.
                  
*/