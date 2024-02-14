
***********************
* Project: 			Paper
* Goal: 			Regressions
* Input data:		XXXXX.dta

*Date created:		XXXX-XX-XX
***********************


*Globals
global variables = ""


*Bring in Data
use "data/working/XXXXXXXX.dta",clear


/*=====================================================
Regressions
=====================================================*/

*First Table
eststo clear
		qui foreach y of global variables {		
			local x: var label `y'
				eststo, title("`x'"):  reg `y' x 
				}

		esttab using "$output/y_x.csv", b(%9.3fc) se(%9.3fc) ///
		starlevels( * 0.1 ** 0.05 *** 0.01) ar2(2) keep(x) label replace nobase nogap mti compress  ///
		title("Y on X") ///
		addnote("This is a regression of Y on X")

		esttab using "$outputtex/y_x.tex", b(%9.3fc) se(%9.3fc) ///
		starlevels( * 0.1 ** 0.05 *** 0.01) ar2(2) keep(x) label replace nobase nogap mti compress  ///
		title("Y on X") ///
		addnote("This is a regression of Y on X") ///
		f booktabs // Note: delete "f" to get more complete latex output
