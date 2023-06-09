

/*    In SAS, macros refer to a powerful feature known as the SAS Macro 
  Facility. Macros are essentially chunks of code or programming statements 
  that can be defined and invoked within SAS programs. They provide a way to automate repetitive tasks, generate code dynamically, and enhance the flexibility and reusability of SAS programs.

  Here are some key points about macros in SAS:

  1.Macro Definition: A macro is defined using the %macro statement, followed 
                      by a macro name and any required parameters. The actual 
                      macro code is enclosed between the %macro and %mend statements.

  2.Macro Invocation: To execute a macro, you use the %macro_name statement. If 
                      the macro has parameters, you pass them within the parentheses.

  3.Macro Variables: Macros can create and manipulate macro variables, which are 
                     similar to regular SAS variables but have a leading ampersand 
                     (&) symbol. Macro variables hold values that can be referenced 
                     and used throughout the program.

  4.Macro Conditionals and Loops: You can use conditional statements (%if, %then, %else) 
                                  and iterative statements (%do, %end) within macros to 
                                  control the flow of execution.

  5.Macro Functions: SAS provides various macro functions (e.g., %sysfunc, %eval, %substr) 
                     that allow you to perform operations and computations within macros.

  6.Macro Language: The SAS macro language has its own syntax and rules. It uses macro 
                    quoting and resolution techniques to handle special characters, resolve 
                    macro variable references, and generate dynamic code.

  7.Macro Libraries: SAS macros can be stored in separate macro libraries for easy access 
                     and reuse across multiple SAS programs.

    Macros in SAS offer a way to make your SAS programs more efficient, flexible, and 
 maintainable. They can be used for tasks like data manipulation, report generation, 
 automation of repetitive tasks, and creating reusable code templates.

*/

*Example of Macros:  ;
%macro calculate_sum(num1, num2);
  %let sum = %eval(&num1 + &num2);
  %put The sum of &num1 and &num2 is &sum;
%mend;

/* Macro invocation */
%calculate_sum(10, 20);


* Creating a Macro program.;
%MACRO <macro name>(Param1, Param2,….Paramn);

*Macro Statements;

%MEND;

# Calling a Macro program.
%MacroName (Value1, Value2,…..Valuen);

