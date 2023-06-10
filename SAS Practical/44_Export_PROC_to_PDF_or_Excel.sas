      * Export proc into the pdf or a excel file ;

/*

To export a SAS procedure report to a PDF or Excel file, you can use the ODS (Output Delivery System) 
statements in SAS.

When you execute the SAS code, the procedure report will be generated and saved as both a PDF file and 
an Excel file at the specified locations.

Make sure to have the appropriate ODS destinations available in your SAS environment. The availability
of the PDF and Excel destinations depends on your SAS software version and licensing.

*/

/*  1.Exporting to a PDF file:

      Use the ODS PDF statement to open the PDF destination.
      Use a SAS procedure such as PROC PRINT, PROC REPORT, or PROC TABULATE to create the content of the PDF file.
      Use the ODS PDF CLOSE statement to close the PDF destination. 
*/
ods pdf file="/home/u61025866/sasuser.v94/Reports/report1.pdf";

proc print data=mylib.cars;
run;

ods pdf close;



/*  2.Exporting to an Excel file:

      Use the ODS EXCEL statement to open the Excel destination.
      Use a SAS procedure such as PROC PRINT, PROC REPORT, or PROC EXPORT to create the content of the Excel file.
      Use the ODS EXCEL CLOSE statement to close the Excel destination.
*/
ods excel file="/home/u61025866/sasuser.v94/Reports/report2.xlsx";

proc print data=mylib.samplesuperstore;
run;

ods excel close;

