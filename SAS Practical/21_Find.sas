                   * FIND ;

/* To find occurrences of a specific character or substring within a string */
/* in SAS, you can use the INDEX function or the FIND function. Both functions */
/* allow you to search for a particular pattern within a string */

data sample;
  input text $50.;
  datalines;
Hello, World!
This is a test.
;
run;

data test;
  set sample;
  position = index(text, 'is');
run;
