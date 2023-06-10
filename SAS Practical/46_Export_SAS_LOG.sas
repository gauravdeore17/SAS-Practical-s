    * Export the sas log into the notepad or text file  ;
    
   * To export the SAS log into a text file using SAS code, you can use the PROC 'PRINTTO'  ;
   
   * step 1 : Importing a data into a mylib library ;
   proc import datafile='/home/u61025866/sasuser.v94/excel_files/titanic.csv'
            out =MYLIB.titanic  
            dbms=csv replace;            
            sheet='titanic';
   run;
   
   proc import datafile='/home/u61025866/sasuser.v94/excel_files/placement.csv'
            out =MYLIB.placement  
            dbms=csv replace;            
            sheet='placement';
   run;

*  step 2: export the sas log into the notepad or a text file    ;
    
proc printto log='/home/u61025866/sasuser.v94/Reports/main.log';

proc compare base=mylib.cars compare=mylib.placement;
run;
