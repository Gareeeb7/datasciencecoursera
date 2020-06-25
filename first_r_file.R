#Once you have installed R and RStudio you will need to import the datasets we will be using in this course into R. 

#The package MSA can be installed by typing into the R console:
  
R>install.packages("https://homepage.boku.ac.at/leisch/MSA/packages/MSA_0.3.tar.gz",repos = NULL, type = "source")

#If you have difficulty installing this package, you may first need to install gtools using the command:
  
  R>install.packages('gtools')

#The package flexclust can be installed from the book web page using:
  
  install.packages("https://homepage.boku.ac.at/leisch/MSA/packages/flexclust_1.3-5.tar.gz", repos = NULL, type = "source")

#Package flexclust contains external code and thus requires on Windows the installation of Rtools first in order to be able to install from source. The Rtools are available at:
  
#https://cran.r-project.org/bin/windows/Rtools/
  
#Installation of the package might fail if any of the dependencies is missing, e.g. as indicated by an error message like:
  
#ERROR: dependency 'modeltools' is not available for package 'flexclust'

#These missing packages can be installed from CRAN using for example:
  
#install.packages("modeltools")

#DEMO FILES
#To access the demos you can then do:
  
R> library("MSA")
R> demo("step-4") 
R> file.edit(system.file("demo", "step-4.R", package = "MSA"))

#All demos available in package MSA are listed using:
  
  R> demo(package = "MSA")

#Alternatively one can unpack the MSA_0.3.tar.gz, which can be downloaded directly from http://www.marketsegmentationanalysis.org/
  
#All demo files are in the directory demo as R scripts.