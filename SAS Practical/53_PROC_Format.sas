      * PROC FORMAT  ;

/*
In SAS, the PROC FORMAT statement is used to define custom formats for variables. 
Formats in SAS are used to change the appearance of variable values without modifying 
the underlying data. They provide a way to display or group values in a user-defined manner.
*/

data my_data;
    input team $ position $ points;
    datalines;
A Guard 25
A Guard 20
A Guard 30
A Forward 25
A Forward 10
B Guard 10
B Guard 22
B Forward 30
B Forward 10
B Forward 10
B Forward 25
;
run;

proc print data=my_data;
run;

/*calculate frequency of values in points column*/
proc freq data = my_data;
    table points;
run;

/*define formatting for points variable*/
proc format;
    value points_range
        25-high='High'
        15-<25='Medium'
        other ='Low';
run;

/*create frequency table for points variable, using formatting defined above*/
proc freq data = my_data;
    table points;
    format points points_range.;
run;

/*define formatting for points variable*/
proc format; 
    value points_range
        25-high='High'
        15-<25='Medium' 
        other ='Low';
run;

/*create new dataset with points_range variable*/
data new_data;
    set my_data;
    point_range = put(points, points_range.);
run;

/*view dataset*/
proc print data=new_data;