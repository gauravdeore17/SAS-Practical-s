           /* Export the SAS Data to XLSX or CSV */
           
proc export data=mylib.cars
            outfile='/home/u61025866/sasuser.v94/excel_files/CARS.csv'
            dbms=csv replace;
          /*dbms=xlsx replace; */
          /*dbms=xls replace; */
            sheet='cars1';
run;