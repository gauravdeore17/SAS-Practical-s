data card info;
input card number $ 1-50;
datalines;
4444333322211111
9878677245322223
8976453276767864
6754901234657829
9878973921789723
1292783948793287
;
run;

data split;
set card info; 
last_part = substr(card_number,12,4);
substr(card_number,5,8)="XXXXXXXX"; 
run;