* For the rest of the exercises, another data set is used which is already in .dta format

use "/Users/nastiasolomakha/Downloads/Stata/hotels-europe_features_price_merged.dta", clear
browse

* Prepare a sample for analysis by filtering observations and variables and creating transformations of variables.

* Filtering data to only keep hotels only, those with 3 to 4 stars, in city Barcelona 

keep if stars >= 3 & stars <= 4 & stars!=.
keep if accommodation_type == "Hotel"
keep if city_actual == "Barcelona"

* Dropping variables which are not significant and would not be needed in further analysis 

drop offer_cat year month nnights holiday weekend 

* Summarizing price and distance variables

summarize price, det
summarize distance, det

* Estimating a simple linear regression of prices on distance 

reg price distance

* Generating natural logarithm of the price

gen ln_price = ln(price)

* Estimating regression of ln prices on distance 

reg ln_price distance

