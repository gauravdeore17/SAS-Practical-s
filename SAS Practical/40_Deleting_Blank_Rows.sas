           * Deleting Blank Rows in the Table ;

data outdata;
length Name $12.;
input Name $ Score1 Score2 Score3 ;
infile datalines missover;
datalines;
Sam 77 68 66
Deepanshu 50 . 89
Shane . 78 89
Roger 50 97 .
Priya . 68 93
;
run;

/*Method I: Removes complete row where all variables having blank/missing values */
options missing = ' ';
data readin;
   set outdata;
   if missing(cats(of _all_)) then delete;
run;

/*Method II: Removes only that rows where any of the variable has missing/blank values  */
data readin;
    SET outdata; 
    IF cmiss(of _character_) 
    OR nmiss(of _numeric_) > 0
     THEN 
      DELETE;
run;

/*

Note :

    1.The MISSING = system option is used to display the missing values as a single space rather
                   than as the default period (.) options missing = ‘ ‘;
    2.The CATS function concatenates the values. It also removes leading and trailing blanks. 
      cats(of _all_) – Concatenate all the variables
    3.missing(cats(of _all_)) – Identifies all the rows in which missing values exist in all the variables.
    
*/


  /* On Large Dataset */
 
data testing;
set mylib.cars;

missing_flag = missing(cats(of_all_));
run;
proc print data=testing ;
run;