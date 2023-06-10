        * Adding Leading Zeros  ;

/*
when we have some product codes that need to have leading zeros if the product code has a length 
less than defined length (let's say 10 characters). It sometimes become a daunting task when we merge 
two tables and the primary key is of different types and leading zeros is missing in one of the tables.
*/

/*  1.ADD LEADING ZEROS TO VARIABLE   */

data xy;
input x y;
cards;
1234 33
123 44
1236 45
;
run;

data temp;
set xy;
xx = put(x, z6.);
run;

/* 
   NOTE : z6. tells SAS to add 'k' number of leading zeros to the variable 'x' to maintain 
          6 as a length of the newly transformed variable 'xx'. In this case, 'k' = (6 - number of values
          in each observation in variable 'x'). In the first observation, it would add 2 leading zeros as 
          the number of values is 4. However, it would add 3 leading zeros in second observation as it has 3 values.
*/



/*  2.Add leading zeros to the Character Variable   */

data xy;
input x$ y;
cards;
A1234 33
A123 44
A1236 45
;
run;

data temp;
set xy;
xx = cats(repeat('0',6-length(x)-1), x);
proc print;
run;

/*
    NOTE : CATS function is used to concatenate 0s with the variable 'x'. REPEAT function is used 
           to repeat 0s. LENGTH function is used to determine the number of characters in the variable 
           'x'.  6 - length(x) -1 translates to ( 6- number of letters and values in the variable x - 1).
*/

           