* Read .csv data 

import delimited using "/Users/nastiasolomakha/Downloads/Stata/opinions.csv", clear
browse

* Fix common data quality errors in Stata 
** converting string to integer 

destring ans, replace ignore("yes" "no")

* Dropping one question 

drop if qn == "heard-of-last-week"

* Save new data file in Stata

save "/Users/nastiasolomakha/Downloads/Stata/opinions_modified.dta", replace

