complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
        observed_cases<-data.frame()
        for(file in rep(id)){
                pollutantData <- read.table(paste(directory,"/",
                sprintf("%03d", file),".csv",sep=""),sep=",",header=TRUE)
                observed_cases <- rbind(observed_cases,
                cbind(file,nrow(pollutantData[complete.cases(pollutantData),])))
        }
        colnames(observed_cases) <- c("id","nobs")
        observed_cases
}





