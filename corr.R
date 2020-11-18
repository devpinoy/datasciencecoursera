corr <- function(directory, threshold = 0) {
      
      setwd(paste("D:/Learn Data Science/rprog_data_specdata/",directory,sep = ""))
      listf <- list.files()
      
      corvect <- complete(directory)
      
      id <- corvect[corvect$nobs>threshold,1]
      my_res <- vector()
      
      for (i in id){
            
            my_vector <- read.csv(listf[i])
            my_sub <- subset(my_vector,!(is.na(my_vector$sulfate) | is.na(my_vector$nitrate)) ) 
            
            my_cor <- cor(my_sub$sulfate,my_sub$nitrate)

            my_res <- c(my_res,my_cor)
      }
      my_res
      
}