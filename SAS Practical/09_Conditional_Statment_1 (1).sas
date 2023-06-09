/*IF-ELSE Statment*/
data testing;
set MYLIB.samplesuperstore;

if Sales>300 then Category="Good";
else Category="Average";
run;

/*Here we use the if else statment which show the data of if sales is greater than 300 then it print the Good 
statment on the Category column other wise it print the Average keyword on the column.*/