/*Importing a Excel file on sas*/

proc import datafile='/home/u61025866/sasuser.v94/excel_files/cars.csv'
            out =MYLIB.Cars  
            dbms=csv replace;            
            sheet='Car';
run;

*the keep statment is used to keep the variable which is need to be use on the data;
data keeps(keep=name year selling_price);
set MYLIB.cars;
run;

*the drop statment is used to drop the variable on the existed data;
data drops(drop=owner transmissio);
set MYLIB.cars;
run;

*the output option is used to print the output table on the data;
data price(keep=name year selling_price) feature(drop=owner transmissio);
if selling_price>=130000 then output price;
else output feature;
set MYLIB.cars;
run;


/*_N_ option is a special variable that represents the current iteration number or 
observation number within a data step or procedure. It is an automatic variable that
 is available only within the data step or procedure where it is supported.*/
data line_number;
set MYLIB.cars;
if _N_>=10 and _N_<20;
run;

/*obs option is used to specify the number of observations to include or limit in
 the output of a SAS procedure or data step. It allows you to control the subset
 of data that is processed or displayed.*/
data Observations(obs=15);
set MYLIB.cars;
run;