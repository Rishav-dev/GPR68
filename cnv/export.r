cna <- read.csv("cna-tsv.csv", sep = ",")

f <- cna[, 3]
r <- cna[, 1]
cna <- cbind(r, f)
write.csv(cna, "plot.csv", row.names = FALSE, quote = FALSE)
