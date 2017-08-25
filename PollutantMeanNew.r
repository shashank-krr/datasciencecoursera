pollutantmean <- function(directory , pollutant, id = 1:332){   ##directory is the chacter vector indicating the location of the csv files

    files <- list.files(path=directory, pattern = ".csv", full.names = TRUE)
    values <- numeric()
    for(i in id){
        data = read.csv(files[i])
        values <- c(values, data[[pollutant]])  ##name of the pollutant
    }
    mean(values, na.rm = TRUE)
}

pollutantmean(getwd(), "sulfate",1:10)  ## mean of the pollutant in all the files ignoring the na values