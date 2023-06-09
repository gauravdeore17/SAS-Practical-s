           * first.var and last.var   ;

/*        In SAS, the variables first.var and last.var are special variables that are 
   automatically created when using a BY statement in a DATA step or a procedure 
   like PROC SORT or PROC MEANS. These variables are used to identify the first and 
   last occurrences of a group defined by one or more variables.

Here's how these variables work:

    1.first.var: This variable is set to 1 for the first observation within a group defined 
                 by the variable(s) specified in the BY statement. For subsequent observations 
                 within the same group, it is set to 0.

    2.last.var: This variable is set to 1 for the last observation within a group defined by 
                the variable(s) specified in the BY statement. For all other observations within 
                the same group, it is set to 0.
                
*/

data class1;
input ID Name $ Marks;
cards;
1     Rahul     45
1     Ajay      74
2     Ram       45
2     Girish    54
3     Simran    87
3     Priya     92
3     Riya      87
4     Tina      23
5     Dave      87
5     Ken       87
6     Albert    63
8     Alex      72
;
run;
PROC SORT DATA = class1;
BY ID;
RUN;
DATA class2;
SET class1;
BY ID;
First_ID= First.ID;
Last_ID= Last.ID;
RUN;