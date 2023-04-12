# read cna-tsv.csv file
cna <- read.csv("cna-tsv.csv", sep = ",")

library(ggplot2)
# plot the data of gpr68 with x axis being the different study ids and y axis being the gpr68 values and the study ids are different categories
plot <- read.csv("cna-tsv.csv", sep = ",")

plot$STUDY_ID <- as.character(plot$STUDY_ID)

# select all the rows whose study id is luad_oncosg_2020
Explot <- plot[plot$STUDY_ID == "luad_oncosg_2020", ]

# add a line at 0 using the ggplot
ggplot(Explot, aes(x = STUDY_ID, y = GPR68, color = STUDY_ID)) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    labs(x = "Study ID", y = "GPR68") +
    geom_violin() +
    geom_jitter(width = 0.2, height = 0.1, alpha = 0.5) +
    theme(legend.position = "none") +
    geom_point(size = 3)
