             * JOINS IN PROC SQL  ;
             
             * Creating a Dataset :   ;
             
Data A;
Input ID Name$ Height;
cards;
1 A 1
3 B 2
5 C 2
7 D 2
9 E 2
;
run;
Data B;
Input ID Name$ Weight;
cards;
2 A 2
4 B 3
5 C 4
7 D 5
;
run;

/*view datasets*/
proc print data = A;
proc print data = B;
             
/*     In PROC SQL, you can perform joins to combine data from multiple 
   tables based on a common column. There are several types of joins 
   available, including INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN. 
*/

*1.INNER JOIN : An INNER JOIN returns only the matching rows from both tables.;
PROC SQL;
Create table dummy as
Select * from A as x inner join B as y
On x.ID = y.ID;
Quit;


/*2.LEFT JOIN : A LEFT JOIN returns all rows from the left table (TableA) and the 
matching rows from the right table (TableB). If there are no matching 
rows in TableB, NULL values are returned.*/
PROC SQL;
Create table dummy as
Select * from A as x left join B as y
On x.ID = y.ID;
Quit;


/*3.RIGHT JOIN : A RIGHT JOIN returns all rows from the right table (TableB) and the matching
rows from the left table (TableA). If there are no matching rows in TableA, 
NULL values are returned*/
PROC SQL;
Create table dummy as
Select * from A as x right join B as y
On x.ID = y.ID;
Quit;


/*4.FULL JOIN : A FULL JOIN returns all rows from both tables, including the matching and 
non-matching rows. If there is no match, NULL values are returned for the 
corresponding table.*/
proc sql;
create table dummy as
select coalesce (x.ID,y.ID) as ID, coalesce (x.name,y.name) as name,height,weight
from a as x full join b as y
on x.id = y.id;
quit;


/*5.Cross Join / Cartesian product : The Cartesian product returns a number of rows equal to the 
                                     product of all rows.   */
PROC SQL;
Create table dummy as
Select * from A as x cross join B as y;
Quit;
