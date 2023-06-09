           * REVERSE Function  ;

/*
In SAS, you can use the REVERSE function to reverse the characters in a string. The REVERSE function 
takes a string as an argument and returns the reversed version of that string.
*/

data test;
   input my_string $20.;
   datalines;
Hello, World!
12345
SAS is fun
;
run;

data final;
   set test;
   reversed_string = reverse(my_string);
run;
