f <- read.csv("ensembl-export.csv")
#deleting every row that has a value x in the column Conseq. Type
x = "intron variant"
f <- f[!f$Conseq.Type == x,]
write.csv(f, "ensembl-export.csv", row.names = FALSE)
