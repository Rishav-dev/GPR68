# add a column to cna-tsv.csv file with a given value

# read cna-tsv.csv file
cna <- read.csv("cna-tsv.csv", sep = ",")

plot$STUDY_ID <- as.character(plot$STUDY_ID)

# add a column to cna-tsv.csv file with a given value
value <- "Combined Study Data"
cna$STUDY_ID <- value

ggplot(cna, aes(x = STUDY_ID, y = GPR68, color = STUDY_ID)) +
    theme(aspect.ratio = 3 / 4) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(x = "Study ID", y = "GPR68") +
    geom_jitter(width = 0.2, height = 0.1, alpha = 0.5) +
    theme(legend.position = "none") +
    geom_point(size = 3) +
    geom_hline(yintercept = 0, color = "black") +
    geom_hline(yintercept = mean(cna$GPR68), color = "blue") +
    ylim(-2, 2)
