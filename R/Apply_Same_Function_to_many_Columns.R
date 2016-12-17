# How to apply the same function on many columns of a data table
library(data.table)
library(parallel)
dt <- data.table(a = 1:3, b = 1:3, d = 1:3)
cols <- c("a", "b")
n <- 1 #Set it accordingly based on how many cores you want to use
#Objective: Multiple all the columns by 2
df[ , (cols) := mclapply(.SD, function(x) { x*2 }, mc.cores = n), .SDcols = cols]
