          /* Copy One-Multiple-All Table's or Dataset's from One Library to Another */

/*  1.First we copy a single data set from one library to another. I use the 
    Copy Procedure and specify the IN= and OUT= options to be the libraries 
    from which I want to copy data from and to respectively. Finally, I use 
    the Select Statement to specify the names of the data sets I want to copy.
    
   Copy a single table/dataset */
PROC COPY IN=mylib OUT=sasdata;
   SELECT cars;
RUN;


/* 2.Copy multiple tables/datasets */
PROC COPY IN=mylib OUT=sasdata;
   SELECT cars titanic placement;
RUN;


/*  3.I execute almost the same code as in the example above. However, here I 
    omit the Select Statement. Consequently, all data sets in the IN library are
    copied to the OUT library.
    
   Copy all tables/datasets */
PROC COPY IN=mylib OUT=sasdata;
   SELECT ALL;
RUN;
