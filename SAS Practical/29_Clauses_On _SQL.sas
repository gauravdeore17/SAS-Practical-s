/* Sample data */
data have;
  input id category $ value;
  datalines;
1 A 10
2 A 20
3 B 30
4 B 40
;

/* SQL query with WHERE, GROUP BY, and HAVING clauses */
proc sql;
  select category, sum(value) as total
  from have
  where value > 15
  group by category
  having total > 50;
quit;
