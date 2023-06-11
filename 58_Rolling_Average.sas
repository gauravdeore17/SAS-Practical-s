     /* Rolling Average */
    
   /* To calculate a rolling average in SAS, you can use the DATA step and an array to store 
    the values for the rolling window.   */

data original_data;
    input time values;
    datalines;
1 7
2 12
3 14
4 12
5 16
6 18
7 11
8 10
9 14
10 17
;
run;

proc print data=original_data;


/*calculate 3-period moving average for values*/
proc expand data=original_data out=out_data method=none;
    id time;
    convert values = values_ma3 / transout=(movave 3);
run;

/*view results*/
proc print data=out_data;
run;


/*calculate 4-period moving average for values*/
proc expand data=original_data out=out_data method=none;
    id time;
    convert values = values_ma4 / transout=(movave 4);
run;

/*view results*/
proc print data=out_data;
run;


/* Example 2:  */

/* Create example dataset */
data have;
  input date date9. value;
  format date date9.;
  datalines;
01JAN2023 10
02JAN2023 15
03JAN2023 8
04JAN2023 12
05JAN2023 20
06JAN2023 18
07JAN2023 14
08JAN2023 11
09JAN2023 9
10JAN2023 16
;

/* Calculate rolling average */
data want;
  set have;
  array window[3] _temporary_; /* Array to store rolling window values */
  retain window; /* Retain the array across iterations */
  
  /* Initialize rolling window */
  if _n_ = 1 then do i = 1 to dim(window);
    window[i] = value;
  end;
  
  /* Shift values in the rolling window */
  do i = 1 to dim(window)-1;
    window[i] = window[i+1];
  end;
  
  /* Add current value to the rolling window */
  window[dim(window)] = value;
  
  /* Calculate rolling average */
  if _n_ >= dim(window) then do;
    rolling_avg = sum(of window[*]) / dim(window);
    output;
  end;
  
  drop i;
run;

/* Print the resulting dataset */
proc print data=want;
run;



