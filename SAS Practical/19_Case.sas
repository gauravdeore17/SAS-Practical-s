data sample;
input name $ 1-23;
cards;
gaurav
lilesh
ishan
pranav
shoeb 
vishal
ashwin
;
run;

data changed_case;
set sample;
capital = upcase(name);
small_case = lowcase(capital);
sentence = propcase(capital); 
run;