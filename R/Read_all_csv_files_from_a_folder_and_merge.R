#How to read many csv files present in a directory and merge them:
file_names <- dir() 
your_data_frame <- do.call(rbind,lapply(file_names,read.csv))
