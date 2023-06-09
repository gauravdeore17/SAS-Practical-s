/*Importing a Excel file on sas*/

proc import datafile='/home/u61025866/sasuser.v94/excel_files/SampleSuperstore.csv'
            out =MYLIB.SampleSuperstore  
            dbms=csv replace;            
            sheet='SampleSuperstore';
run;

*out is used to read the table name in sas;
*dbms is used to select the file extension;

