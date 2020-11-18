pollutant#pollutantmean.R

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
##options(max.print = .Machine$integer.max)
  
    setwd(paste("D:/Learn Data Science/rprog_data_specdata/",directory,sep = ""))
  
    listf <- list.files()

    tot <- 0
    cnt <- 0
    
    for (i in id){
        my_vector <- read.csv(listf[i])
        my_sub <- subset(my_vector, !is.na(my_vector[pollutant]))
        if (nrow(my_sub)) {
          tot <- tot + sum(my_sub[pollutant])
          cnt <- cnt + nrow(my_sub)  
        }
        print(listf[i])
    }
    
    tot/cnt 
}
