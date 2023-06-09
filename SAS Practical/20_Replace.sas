             * Replace ;

/* In SAS, you can use the TRANSLATE function or the COMPRESS function. */
/* Both functions can be used to replace specific characters or substrings  */
/* within a string with desired values. */

data sample;
  input text $50.;
  datalines;
Hello, World!
This is a test.
;
run;

data test;
  set sample;
  new_text = translate(text, '_ ', ',.');
run;
