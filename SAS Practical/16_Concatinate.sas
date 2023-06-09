                    * Concatination ;
         
* In the concatination process we use the double pipe button to concatinate the input data ;

data sample;
first_name = 'Gaurav';
middle_name = 'Arun';
last_name = 'Deore';

full_name = first_name || middle_name || last_name; /* Without Spacing */

full_name_1 = first_name || " " || middle_name ||  " " || last_name; /* With Spacing */

full_name_2 = cat(first_name , middle_name , last_name); /* Using cat() function ( Without Spacing )*/

full_name_3 = catx('',first_name , middle_name , last_name); /* Using catx() function ( With Spacing )*/

run;

* Use the variable name without a spacing instead of use the underscore (_) ;
/* Note : 1. We get the output string without a spacing if we have a spacing on it
             then just give the " " for the spacing.
             
          2. We can also use the cat() function to concatinate the string and it is
             seperated by a comma on the function. But we get the string without a 
             spacing . 
             
          3. If we need a spacing  then use the catx() function on the program to
             get the spacing on the strings. It use the simple single or duble bracket
             before the internal function starts it is also called a seperater on it 
             we can use anything which we need in the space.
             
*/