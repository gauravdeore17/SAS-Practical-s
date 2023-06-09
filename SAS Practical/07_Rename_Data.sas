data testing;
set MYLIB.samplesuperstore;

rename Quantity=QTY;
run;

/* It is used to rename the column name of the data*/