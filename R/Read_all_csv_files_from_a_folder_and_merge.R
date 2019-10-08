#How to read many csv files present in a directory and merge them:
library(readr)
library(dplyr)
file_names <- dir() 
your_data_frame <- do.call(bind_rows,lapply(file_names,read_csv))
