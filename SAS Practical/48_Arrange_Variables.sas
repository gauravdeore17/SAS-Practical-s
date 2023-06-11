    * Arrange the variable in required sequence ;

* To arrange variables in a specific sequence in SAS, you can use the PROC DATASETS or PROC SQL procedures. ;


* SYNTAX ;
PROC DATASETS LIBRARY=your_library;
   MODIFY your_dataset;
   FORMAT var1 var2 var3;
   DROP var4 var5;
   REORDER var2 var1 var3 var6 var7;
RUN;

* Example ;

PROC print data=mylib.cars;
run;

data testing;
retain name	year	selling_price	km_driven	fuel	seller_type	transmission	owner ;
set mylib.cars;
run;

proc print data=testing;
run;

