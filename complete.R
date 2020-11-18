#complete.R

complete <- function(directory, id = 1:332) {
      
      setwd(paste("D:/Learn Data Science/rprog_data_specdata/",directory,sep = ""))
      
      listf <- list.files()
      complete.data <- data.frame()
            
      for (i in id){
            my_vector <- read.csv(listf[i])
            my_sub <- subset(my_vector,!( is.na(my_vector$sulfate) | is.na(my_vector$nitrate)) ) 
            items = nrow((my_sub))
            complete.data <- rbind(complete.data,c(i,items))
      }
      
      colnames(complete.data) <- c("id","nobs")
      complete.data
}
