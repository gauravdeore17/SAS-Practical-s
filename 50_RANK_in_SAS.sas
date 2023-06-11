    /*  Rank in SAS 

   In SAS, the PROC RANK procedure is used to assign ranks to the values of a variable 
within a dataset. It can be used to determine the relative positions of observations 
based on their values. The ranks can be assigned in either ascending or descending order.

Syntax :

PROC RANK DATA=input_dataset OUT=output_dataset;
   BY variables;
   VAR variables;
   RANKS new_variable_name;
RUN;

NOTE : 
      1.DATA : Specifies the input dataset containing the variables to be ranked.
      2.OUT  : Specifies the output dataset where the results will be stored.
      3.BY   : Specifies one or more variables used to group the data. The ranking is 
               performed separately within each group.
      4.VAR  : Specifies the variable(s) for which ranks are to be assigned.
      5.RANKS: Specifies the name of the new variable that will store the ranks.
      
*/

data temp;
input ID Gender $ Score;
cards;
1 M 33
2 M 94
3 M 66
4 M 46
5 F 92
6 F 95
7 F 18
8 F 11
;
run;

* Compute rank of numeric variable - "Score" ;
proc rank data= temp out = result;
var Score;
ranks ranking;
run;

* Reverse order of ranking (Descending) ;
proc rank data= temp descending out = result;
var Score;
ranks ranking;
run;

* Percentile Ranking (Quartile Rank) ;
proc rank data= temp descending groups = 4 out = result;
var Score;
ranks ranking;
run;
