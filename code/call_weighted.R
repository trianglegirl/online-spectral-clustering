JOB <- as.numeric(Sys.getenv("PBS_ARRAYID"))
print(JOB)

invisible(sapply(X = list.files(path = "code/functions", pattern = "*.R$", full.names = TRUE, ignore.case = TRUE), source, .GlobalEnv))
dataset_list <- c("staticNormal","jumpNormal") #"hyperSphere")

dataset <- dataset_list[JOB]
print(dataset)
run_clustream_weighted(dataset,  nMicro = 150, nRepeats = 10)

