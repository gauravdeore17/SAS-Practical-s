             *  Regular Expression ;

/*In SAS, regular expressions (regex) are powerful pattern-matching tools
  used to search, manipulate, and validate character data. SAS provides several
  functions that support regular expressions. Here are some commonly used SAS
  functions related to regular expressions:

1.PRXMATCH: This function checks if a pattern matches a string and returns
  a binary value of 1 or 0. It is used to determine if a pattern exists within a string.

2.PRXCHANGE: This function searches for a pattern within a string and replaces
  it with a specified replacement string.

3.PRXSUBSTR: This function extracts substrings from a source string based on 
  a pattern. It returns the first occurrence of the pattern found within the string.

4.PRXPARSE: This function compiles a regular expression pattern into a format 
  that can be used by other PRX functions.

5.PRXMATCHALL: This function returns a binary value of 1 or 0 for each occurrence
  of a pattern in a string. It is used to find all occurrences of a pattern in a string.

6.PRXPOSN: This function returns the starting and ending positions of a pattern match within a string.

     These functions allow you to perform various operations on character data using 
regular expressions, such as searching for specific patterns, extracting substrings, 
and replacing patterns with other strings. Regular expressions in SAS use a syntax 
similar to Perl regular expressions, allowing for complex pattern matching and manipulation.

*/


/* Sample data */
data have;
  input id $ value $;
  datalines;
1 abc123
2 456xyz
3 def789
4 ghij
5 123
;

/* Program using regular expressions */
data want;
  set have;
  
  /* Define a regular expression pattern */
  pattern = prxparse('/\d{3}/'); /* Matches three consecutive digits */
  
  /* Use regular expression pattern to extract matching values */
  if prxmatch(pattern, value) then do;
    match_value = prxposn(pattern, 0, value);
    output;
  end;
  
  drop pattern;
run;

/* Output */
proc print data=want;
run;

/*

                   PERL Regular Expression
                   
Here is a list of common Perl-compatible regular expressions (PCRE) patterns and their meanings:

1.Literal Characters:
  abc : Matches the exact characters "abc" in a string.
  
2.Character Classes:
  [abc] : Matches either "a", "b", or "c".
  [a-z] : Matches any lowercase letter from "a" to "z".
  [A-Z] : Matches any uppercase letter from "A" to "Z".
  [0-9] : Matches any digit from 0 to 9.
  [^0-9] : Matches any character that is not a digit.

3.Metacharacters:
  . : Matches any single character except a newline.
  ^ : Matches the start of a line or string.
  $ : Matches the end of a line or string.

4.Quantifiers:
  * : Matches zero or more occurrences of the preceding character or group.
  + : Matches one or more occurrences of the preceding character or group.
  ? : Matches zero or one occurrence of the preceding character or group.
  {n} : Matches exactly n occurrences of the preceding character or group.
  {n,} : Matches n or more occurrences of the preceding character or group.
  {n,m} : Matches between n and m occurrences of the preceding character or group.

5.Anchors:
  \b : Matches a word boundary.
  \B : Matches a non-word boundary.
  ^ : Matches the start of a line or string.
  $ : Matches the end of a line or string.

6.Groups and Capture:
  (abc) : Matches and captures "abc".
  (?:abc) : Matches "abc" but does not capture it.

7.Alternation:
  abc|def : Matches either "abc" or "def".

8.Escape Sequences:
  \d : Matches a digit (equivalent to [0-9]).
  \D : Matches a non-digit (equivalent to [^0-9]).
  \w : Matches a word character (letter, digit, or underscore).
  \W : Matches a non-word character.
  \s : Matches a whitespace character (space, tab, newline).
  \S : Matches a non-whitespace character.
  \. : Matches a literal dot character.

9.Greedy and Lazy Matching:
  .* : Greedy match, matches as much as possible.
  .*? : Lazy match, matches as little as possible.
  
  
*/




