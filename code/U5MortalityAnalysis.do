Person B


**********************************************************************
capture log close
set more off
clear all
set maxvar 20000

**********************************************************************



*2. Directories

if c(username) == "sean" {
global dir "/Users/sean/Documents/01RESEARCH/GitHub/GitTutorial"
global output "/Users/sean/Documents/01RESEARCH/GitHub/GitTutorial/results"
global outputtex "/Users/sean/Documents/01RESEARCH/GitHub/GitTutorial/results/tex"
global datadir "/Users/sean/Documents/01RESEARCH/GitHub/GitTutorial/data"
cd $dir
}


**********************************************************************

import excel using "$datadir/raw/crosscountry.xlsx", first 

* blah blah

tabstat LogGDPpercapitain2010-SouthAsia, stats(mean min) // sum stats

reg Under5mortality LogGDPpercapitain2010, vce(robust)



