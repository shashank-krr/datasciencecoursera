complete = function(directory, id= 1:332){
    nobs = numeric()
    files = list.files(directory , pattern = ".csv", full.names = TRUE)
    for(i in id){
    values = sum(complete.cases(read.csv(files[i])))
        nobs = c(nobs, values )
        
    }
    data.frame(id, nobs)
}
