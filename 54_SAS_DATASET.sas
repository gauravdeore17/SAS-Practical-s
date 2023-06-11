       *  PROC DATASET   ;

/*
The PROC DATASETS statement in SAS is used for managing datasets, and it provides various 
functionalities for manipulating and modifying datasets. Here are some commonly used functionalities
of PROC DATASETS 
*/

* 1.Renaming a Dataset:  ;
         proc datasets library=your_library;
         change cars = vehicle;
         run;

* 2.Deleting a Dataset:  ;
         proc datasets library=your_library;
         delete demo;
         run;

* 3.Copying a Dataset: ;
       proc datasets library=mylib;
       copy in=sashelp out=test;
       select cars;
       run;
       
   
