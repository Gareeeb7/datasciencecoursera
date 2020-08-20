pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  #path <- file.path(getwd(),directory)
  #setwd(file.path(getwd(),directory))
  
  path <- paste0(getwd(),"/", directory) #this one is more general
  
  data <- data.frame()
  for (i in id) {
    if (i < 10) {
      dat <- read.csv(paste(path,"/00", as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
      data <- rbind(data,dat)
    }
    else if (i < 100) {
      dat <- read.csv(paste(path,"/0", as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
      data <- rbind(data,dat)
    }
    else {
      dat <- read.csv(paste(path,"/", as.character(i),".csv", sep = ""), 
                      as.is = T, 
                      header = T)
      data <- rbind(data,dat)
    }
    
  }
  return(mean(data[,pollutant], na.rm = T))
}