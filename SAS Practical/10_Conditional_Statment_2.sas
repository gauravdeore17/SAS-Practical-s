/*IF-THEN ELSE_IF_THEN ELSE Statment*/
data testing;
set MYLIB.samplesuperstore;

if Sales < 300 then Category="Below Average";
else if Sales>=300 and Sales<500 then Category="Premium";
else Category="Elite";
run;

/*Here we use the if else statment which show the data of if sales is greater than 300 then it print the Good 
statment on the Category column other wise it print the Average keyword on the column.*/