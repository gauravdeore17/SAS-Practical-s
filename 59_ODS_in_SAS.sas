                   /*  ODS in SAS  */

/*
In SAS, ODS stands for Output Delivery System. It is a powerful feature that allows you to manage 
and control the output produced by SAS procedures and data steps. ODS provides a way to capture SAS 
output and deliver it in various formats such as HTML, PDF, Excel, RTF, and more.

With ODS, you can direct your output to different destinations and control the appearance and layout 
of the output. For example, you can generate reports in HTML format for web publishing, create PDF 
documents for printing, or generate Excel files for data analysis in other applications.
*/

/* proc print data=mylib.cars(obs=10 keep=selling_price owner fuel); */
/* run; */

proc template ;
   list styles;
run;

/* We can also change the style of the data which we need */

ods pdf

file='/home/u61025866/sasuser.v94/Reports/ods_sample.pdf';
      proc print data=mylib.cars(obs=10 keep=selling_price owner fuel);
      run;
      
ods pdf close;

/* we can also make some other type of data file through the ODS */