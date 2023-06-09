             * Scan Function ;

/* The SCAN function in SAS is used to extract individual words or 
substrings from a character string based on specified delimiters. 
It is particularly useful when you want to extract specific words 
or substrings from a longer character string.

        SCAN(string, n, delimiter)
        
It will take 3 parameters which is,
 
1. string is the character string from which you want to extract a word or substring.

2. n specifies the position of the word or substring you want to extract. It can be
   a positive integer or a negative integer.
   If n is a positive integer, SCAN returns the word or substring at that position
   from the left end of the string.
   If n is a negative integer, SCAN returns the word or substring at that 
   position from the right end of the string.
   
3. delimiter is the character that separates the words or substrings within the string.

*/
 
data sampel;
set mylib.cars;
first_name = scan(name,,''); run;