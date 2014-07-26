pollutantmean <- function(directory, pollutant, id = 1:332) {
        directory <- "C://git_projects//datasciencecoursera//R_Programming//specdata" 
        pollutant <- "sulfate"
        id = 1:10 
         
        
        DATA <- do.call("rbind", lapply( list.files(directory,full=TRUE), read.csv, header=TRUE))
        
        for i in rep(id) {
                if data$ID = id {
                        y <- DATA[complete.cases(DATA)]
                }
        }
        
        na.omit(y[ID])
        
        sub <- y[id,]
        
        mean(as.matrix(sub[pollutant]))

}

