* TRANSPOSE ;

proc import datafile='/home/u61025866/sasuser.v94/excel_files/test.csv'
            out=MYLIB.test
            dbms=csv replace;
            sheet='test';
run;


proc print data=mylib.cars;
run;

proc sort data=MYLib.cars out=sorted;
by name fuel year;
run;

proc transpose data=sorted;
by name;
id fuel;
var year;
run;

*It is used to transpose the data from observation to the variable and viceversa.;

/* PROC TRANSPOSE DATA=input_dataset OUT=output_dataset; */
/*    BY variable(s); /* Optional: Specifies one or more variables to group the data */
/*    ID observation_variable; /* Specifies the variable that contains the observation values */
/*    VAR variable(s); /* Specifies the variables to transpose */
/*    COPY other_variable(s); /* Optional: Specifies variables to include as they are */
/* RUN; */

/* At the time to transpose the date first we need to check the data is alread sorted or not if  */
/* it is not sorted the program is throws error that's why we should need to sort the data before  */
/* transpose. */

*The duplicate values on the coulumn is also affect the transpose process;