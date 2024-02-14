
**********************************************************************
capture log close
set more off
clear all
set maxvar 20000

**********************************************************************

* Created by: 

* Date Created: 

* Contents: 1. Project Overview
*               1.1 Summary
*               1.2 Do files
*           2. Set Directories
*           3. Run do files
*               3.1 Prepare Normalized Datasets
*               3.2 Create Variables/Transformations
*				3.3 Merge Files
*				3.4 Summary Statistics


/**********************************************************************

* 1. Project Overview

*1.1 Summary

Analysis for paper/dissertation/presentation

* 1.2 Do files

		01 - Proj_Data_prep.do: Prepares Data
		02 - Proj_Data_trans.do: Creates variables
		03 - Proj_Data_merge.do: Merges Datasets
		04 - Proj_Data_summary.do: Summary Statistics

**********************************************************************/

*2. Directories

if c(username) == "" {
global dir ""
global output ""
global outputtex ""
global datadir ""
cd $dir
}

if c(username) == "" {
global dir ""
global output ""
global outputtex ""
global datadir ""
cd $dir
}

**********************************************************************


* 3. Run .do files

		 * Step 1: Prepare (normalized) data files

		do "code/Proj_Data_prep.do"

		 * Step 2: Construct second set of normalized data
		 * files containing transformations, etc
		 
		do "code/Proj_Data_trans.do" 

		* Step 3: Merge to create analysis dataset

		do "code/Proj_Data_merge.do" 

		* Step 4: Produce summary statistics

		do "code/Proj_Data_summary.do" 
