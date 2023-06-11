                   /* PROC SURVEYSELECT */

/*

In SAS, PROC SURVEYSELECT is a procedure used for sampling in survey data analysis. It allows you 
to select a random sample from a population based on specific sampling designs and criteria. This 
procedure is particularly useful when working with large datasets and you want to obtain a 
representative subset for analysis.

PROC 'SURVEYSELECT' provides various sampling methods, including simple random sampling, 
stratified random sampling, cluster sampling, and systematic sampling. It also allows you 
to specify sample sizes, probabilities, and allocation ratios for different sampling units.

Here's a brief explanation of some of the important options in PROC SURVEYSELECT:

1.METHOD: Specifies the sampling method to be used, such as SRSS 
          (simple random sampling with replacement), SRSWOR (simple random sampling 
          without replacement), STRATA (stratified sampling), or SYSTEM (systematic sampling).

2.SAMPSIZE: Specifies the desired sample size or the relative sample size for each stratum or cluster.

3.OUTSAMPSIZE: Creates an output dataset that contains the sample selection information, such 
               as the selected observations and their corresponding weights.

4.STRATA: Specifies the variable(s) used for stratification, if stratified sampling is chosen.

5.CLUSTER: Specifies the variable(s) used for clustering, if cluster sampling is chosen.

6.SEED: Sets the seed for the random number generator to ensure reproducibility of the sampling process.

    PROC SURVEYSELECT generates a random sample based on the specified sampling design and produces 
output datasets with the selected sample. You can then use the resulting sample for further analysis 
in SAS or other statistical procedures.

It's important to note that PROC SURVEYSELECT is part of the SAS/STAT software package, so you need to 
have the appropriate license and access to use it.

*/


/* Code */

data my_data;
    input team $ points;
    datalines;
A 12
A 14
A 22
A 35
A 40
B 12
B 10
B 29
B 33
C 40
C 25
C 11
C 10
C 15
;
run;

proc print data = my_data;
run;

/* Example 1: Use PROC SURVEYSELECT to Select Simple Random Sample */
proc surveyselect data=my_data
    out=my_sample
    method=srs    /*use simple random sampling*/
    n=5           /*select a total of 5 observations*/
    seed=1;       /*set seed to make this example reproducible*/
run;

/*view sample*/
proc print data=my_sample;



/* Example 2: Use PROC SURVEYSELECT to Select Stratified Random Sample */
proc surveyselect data=my_data
    out=my_sample
    method=srs    /*use simple random sampling within strata*/
    n=2           /*select 2 observations from each strata*/
    seed=1;       /*set seed to make this example reproducible*/
    strata grouping_var; /*specify variable to use for stratification*/
run;

/*view sample*/
proc print data=my_sample;



