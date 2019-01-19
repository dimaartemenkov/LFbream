# LFbream
Welcome to LFbream. This supplementary materials described in article "Stock assessment and advice of juveniles stocking by length-frequency data on the example of common bream Abramis brama in the Belgorod reservoir" (2019).

The preliminary results of the theoretically population status were determined to the common bream Abramis brama in the Belgorod reservoir, that allowed to calculate the advice of juveniles stocking. VNIIPRH survey data for the period 2012-2017 were processed by the statistical programming language R and the LBB and TropFishR software packages, the demonstration of evaluation procedures is presented on the function documentation page. Mean length of bream differed in different years was a minimum of 19.1 cm in 2016 and a maximum of 29.7 cm in 2017. But optimal fishery length (Lopt) at which the biomass value will be equal to the point of maximum sustainable biomass for bream in the Belgorod reservoir is 41 cm, and optimal length at which 50% of fishes are caught by the net (Lc_Lopt), or fishes enter the fishery, is 40 cm. The high exploitation of the population with a biomass ratio B/Bmsy of 0.16 is the current bream population of 1.3 billion ind. (267 tons), of which only 502 thous. ind. (207 tons) represents spawning biomass. At the same time, the biomass of a size cohort from 41 cm (Lopt) and higher is 20.617 tons or 896 kg/km2. Therefore, the current total biomass allows to make an assumption about the lack of juveniles bream in cohort of 11 cm and to recommend to produce at least 73 thous. ind. (Lc/Lc_Lopt = 0.71) but not more than 904 thous. ind. (B/B0 = 0.06) in the Belgorod reservoir.

# Installation
For the calculation the bream data by LBB and TropFishR methods R2jags, Hmisc, lattice, survival, Formula, ggplot2  and TropFishR may be installed with

install.packages("R2jags")

install.packages("Hmisc")

install.packages("lattice")

install.packages("survival")

install.packages("Formula")

install.packages("ggplot2")

install.packages("TropFishR")

For testing the data you must copy all files to one folder, also don't forget change your working directory with 

getwd()

setwd()

You may need to have R Tools installed on your system to install the development version from GitHub. See the instructions for (R Tools for Windows or R Tools for Mac OS X).

# Questions / Comments / Problems
We welcome any feedback, questions or bug reports on the page. 
