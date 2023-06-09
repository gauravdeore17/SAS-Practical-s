*If we want to add a new variable on the existing data;

data testing;
set MYLIB.samplesuperstore;
price=Quantity*2;
run;

/*Here we add on price variable name on the samplesuperstore data which 
is created by the quantity is multiply by 2.*/
