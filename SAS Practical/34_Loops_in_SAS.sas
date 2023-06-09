                      *   Loops in SAS   ;

/*     In SAS (Statistical Analysis System), you can use different types of loops
 to repeat a block of code multiple times. SAS provides several loop constructs 
 to accommodate different looping requirements. Here are the main types of loops 
 you can use in SAS:   
 
 LOOP : In programming, a loop is a control structure that allows a 
        set of instructions to be repeatedly executed until a specific 
        condition is met. It helps automate repetitive tasks and avoids 
        code duplication. A loop consists of a loop body, which contains 
        the instructions to be repeated, and a loop control mechanism that 
        determines when to continue or exit the loop.

 Iterative Loop : An iterative loop is a type of loop that iterates over a 
                 collection of values or elements. It allows you to perform 
                 a set of instructions for each element in the collection. 
                 The collection can be a list, an array, or any other data 
                 structure that contains multiple items. The iterative loop 
                 repeatedly executes the instructions, each time using a 
                 different element from the collection.
*/

/*1.DO Loop: The DO loop is the most commonly used loop in SAS. It allows you to 
repeat a block of code a specified number of times or until a condition is met. */
data data_bin; 
do i = 1 to 4;   
y = i**2; 
output; 
end; 
run;

data _null_;
   do i = 1 to 10;
      put i;
   end;
run;
*if we create the _null_ dataset then we dont need to create a output table on that ;


/*2.DO WHILE Loop: The DO WHILE loop is used when you want to repeat a block of code 
while a specific condition is true.  */
data data_bin;
 k = 0; 
do j = 1 to 5 by 0.5 while(k < 20);   
k = j**2;
output; 
end; 
run;


/*3.DO UNTIL Loop: The DO UNTIL loop is similar to the DO WHILE loop, but it repeats 
a block of code until a specific condition becomes true*/
data carloan_until;

 loan = 30000;

 payments = 0;

 do until (loan = 0);

  loan = loan - 500;

  payments = payments + 1;

 end;

run;


/*4.Iterative DO Loop: The iterative DO loop allows you to iterate over a list of values 
or variables. It is useful when you want to repeat a block of code for each element in a list. */
data output;
   set input;
   do i = 1 to 5;
      squared_value = value ** 2;
      output;
   end;
run;
