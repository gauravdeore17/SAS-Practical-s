             * INPUT & PUT Function in SAS ;
      
/*   In SAS, the INPUT and PUT functions are used to convert values between
 character and numeric formats. Here's a simple program that demonstrates 
 the usage of INPUT and PUT functions: */      
      
/* Sample data */
data have;
  input id $ value $;
  datalines;
1 10
2 20
3 30
;

/* Program using INPUT and PUT functions */
data want;
  set have;
  
  /* Convert character value to numeric using INPUT function */
  numeric_value = input(value, 8.);
  
  /* Convert numeric value to character using PUT function */
  character_value = put(numeric_value, 3.);
  
  /* Output */
  put 'Original value: ' value;
  put 'Numeric value: ' numeric_value;
  put 'Character value: ' character_value;
run;


          