    * Extracting the number of character from string ;

data have;
   input my_string $20.;
   datalines;
1234567890
ABCDEFGH
12AB34CD
;
run;

data want;
   set have;
   last_four = substr(my_string, length(my_string) - 3);
run;
