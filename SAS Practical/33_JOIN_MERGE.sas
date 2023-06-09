      /* Difference between MERGE and JOIN in SAS 
      
Difference 1:
      1.Merge takes one record from the first file matches with one record on the second file if 
        they have same column in common.
      2.Proc SQL takes one record from the first file matches with all records on the second
        file if they have same column in common.
Difference 2:
      1.Merge - Data sets must be sorted by or indexed on the BY variable prior to merging.
      2.Proc SQL - Data sets doesnot need to be sorted or indexed.

Difference 3:
      1.Proc SQL - Multiple data sets can be joined in one step with out having common variables
      in all data sets.

Difference 4:
      1.Proc SQL - The maximum number of tables that can be joined at a time is 32.

*/