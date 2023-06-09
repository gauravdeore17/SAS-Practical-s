           * ARRAY in SAS   ;

/* SAS Arrays : In SAS, arrays are used for retrieving and storing a set of values 
                based on an index value. The index denotes the reserved location for storing the 
                particular value in the cell. In a SAS DATA phase, arrays provide an acceptable and 
                simple technique to process a set of variables. 

  Syntax of SAS Arrays :
            ARRAY <ARRAY-NAME>[subscript] ($) <list-of-variables values-of-the-array>

  Parameters
      
      1.ARRAY - Used to declare an array
      
      2.array name - The custom name of the array that is user-defined
      
      3.subscript - The number of values that the user wants the array to store
      
      4.($) - Optional parameter, which is used to convey that the type of values 
              stored in the array is character values
              
      5.list-of-variables -  Optional parameter, which is used to act as a placeholder
                             for the required values that are to be stored in the array
                             
      6.values-of-the-array - The actual data values that are to be stored in the array.
                              These can be either read from a file or data line or defined 
                              by the user
                              
   Type of Array in SAS :
   
       1.Numeric Arrays: Numeric arrays in SAS can hold numeric variables. Numeric arrays are
                         useful when you want to perform calculations, aggregations, or statistical
                         analyses on multiple numeric variables simultaneously. 
                         
       2.Character Arrays: Character arrays in SAS can hold character variables. Character arrays
                           are useful when you want to process or manipulate multiple character 
                           variables together, such as concatenating strings or performing pattern matching.

*/

*Example of array in SAS :  ;

DATA array1;

INPUT a1 $ a2 $ a3 $ a4 $ a5 $;

ARRAY colours(5) $ a1-a5;

mix = a1||'+'||a2;

DATALINES;
yellow pink orange green blue
;

RUN;

PROC PRINT DATA = array1;

RUN;


*Numeric Array in SAS;

data mydata;
  input age height weight;
  datalines;
  25 170 65
  30 175 70
  35 180 75
  ;
run;

data average_calculation;
  set mydata;
  
  /* Declare a numeric array named "num_array" with size 3 */
  array num_array[3] age height weight;
  
  /* Calculate the average value for each variable using the array */
  average_age = mean(num_array[1]);
  average_height = mean(num_array[2]);
  average_weight = mean(num_array[3]);
  
  /* Output the results */
  drop age height weight;
run;

*Character Array in Sas;

data mydata;
  input name $ city $ country $;
  datalines;
  John New York USA
  Alice London UK
  Michael Paris France
  ;
run;

data concatenate_values;
  set mydata;
  
  /* Declare a character array named "char_array" with size 3 */
  array char_array[3] $ name city country;
  
  /* Concatenate the values of each variable using the array */
  concatenated_values = catx(', ', of char_array[*]);
  
  /* Output the result */
  drop name city country;
run;

