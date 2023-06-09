                      * Blanks ;
                      
/* The blanks is the blank spacing before and after the string or any input is known as blanks.

   Type of Blanks :
         1.Trailing Blanks : Blank at the end of string
         
         2.Leading Blanks : Blanks at the begining of the string
         
         3.Blank in Between : Blank in between 2 string.
         
   Functions to remove a blanks/spaces:  1.TRIM : return a string without spacing if the string blanks then
                                                  it reurn a one blank.
                                         2.TRIMN : return a string without trailing balnks.
                                         3.STRIP : return a string with leadina and trailin blanls remove.
                                         4.COMPRESS : Remove all blank spaces
                                         5.COMPBL : compress more than one consicutive space into one.
*/

data sample;
name = 'Gaurav Arun Deore';
len = length(name);
run;

* Using COMPRESS ;
data sample1;
name = "gaurav arun deore";
compress=compress(name);
len1 = length(compress);
run;