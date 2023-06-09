
/* Syntax :
 
PROC SQL;
    SELECT column1,
           column2,
           CASE
               WHEN condition1 THEN result1
               WHEN condition2 THEN result2
               ELSE result3
           END AS new_column
    FROM your_table;
QUIT;

   it is the example as same as the switch case here we make some cases
   from one case keyword and then we make the statments using when 
   keyword and it can possible when we take the 2 or more column through 
   the data or excel file and the else statment is mendatory to 
   express after the case and write the from statment which is states that 
   it is taken by which table and at the last we need to quit the 
   sql script on the sas; .
*/

* Code : ;

PROC SQL;
    SELECT Product,
           Quantity,
           Price,
           CASE
               WHEN Quantity < 10 THEN Price * Quantity
               WHEN Quantity >= 10 AND Quantity < 20 THEN Price * Quantity * 0.9
               ELSE Price * Quantity * 0.8
           END AS TotalRevenue
    FROM Sales;
QUIT;
