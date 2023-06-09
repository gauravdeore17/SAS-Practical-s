                        * PROC CONTENTS   ;

/*In SAS, the PROC CONTENTS procedure is used to obtain information about 
the structure and attributes of a SAS dataset. It provides a comprehensive 
summary of the variables, including their names, types, lengths, formats, 
and labels, as well as information about indexes, integrity constraints, 
and other dataset attributes.

By running PROC CONTENTS, you can view details about the variables and metadata
 of a SAS dataset without actually displaying the data values themselves. This 
 procedure is particularly useful when you want to explore the structure of a 
 dataset, assess the quality of the data, or verify the variable attributes.
 
 */

proc contents data=mylib.cars;
run