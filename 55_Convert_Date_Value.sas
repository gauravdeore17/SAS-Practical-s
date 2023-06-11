  * Converting Date values Stored as a Number to Actual Date   ; 

data temp;
input date;
cards;
20160514
19990505
20131104
20110724
;
run;

data temp2;
set temp;
newdate = input(put(date,8.),yymmdd8.);
format newdate date10.;
proc print noobs;
run;