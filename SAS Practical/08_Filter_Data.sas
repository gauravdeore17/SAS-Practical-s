data testing;
set MYLIB.samplesuperstore;

where City="Los Angeles"and Sales> 300 ;
run;

/* In the sas software we use the all type of the operator such as and or not on the 
code which means it is slightly same as the MYSQL language and any other programming language.*/