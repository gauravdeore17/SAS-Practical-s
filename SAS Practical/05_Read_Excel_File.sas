/*Importing a Excel file on sas*/

proc import datafile='/home/u61025866/sasuser.v94/excel_files/SampleSuperstore.csv'
            out =MYLIB.SampleSuperstore  
            dbms=csv replace;            
            sheet='SampleSuperstore';
run;
*out is used to read the table name in sas;
*dbms is used to select the file extension;

/* IF we need to read the imported data in sas */

libname inlib  '/home/u61025866/sasuser.v94/SAS Table';

*here we read the library or a table inside a inlib library;