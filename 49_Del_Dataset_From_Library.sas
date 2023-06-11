   * Delete the dataset from the library ;
   
proc datasets lib=mylib kill;
run;

proc datasets lib=mylib memtype=data;
run;
/* it will shows there is no table in the library */

/*  By using this command the kill function kills all the table presence in the current 
 library hence we need to make the copy of the dataset before deleting the library */