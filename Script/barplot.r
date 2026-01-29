library(here)

data <- read.csv(here("./Data/AMS_Master_en.csv"))

PNTS_data <- subset(data, grepl("Pungnap", SiteName))
PNTS_data$SiteName <- "PNTS"

MCTS_data <- subset(data, grepl("Mongchontoseong", SiteName))
MCTS_data$SiteName <- "MCTS"

SCT_data <- subset(data, grepl("Seokchon", SiteName))
SCT_data$SiteName <- "Seokchon"

SC_data <- subset(data, grepl("Shincheon", SiteName))
SC_data$SiteName <- "Shincheon"

BI_data <- subset(data, grepl("Bangi", SiteName))
BI_data$SiteName <- "Bangi"

AS_data <- subset(data, grepl("Amsa", SiteName))
AS_data$SiteName <- "Amsa"

CH_data <- subset(data, grepl("Cheonho", SiteName))
CH_data$SiteName <- "Cheonho"

combined_data <- rbind(PNTS_data, MCTS_data, SCT_data, SC_data, BI_data, AS_data, CH_data)
counts <- table(combined_data$SiteName)

tiff(file=here("./Graph/Figure 2. Number of samples(Hanseong).tiff"), units='in', res=300, width=5, height=5)
par(mar = c(8, 4, 4, 2))
x_pos <- barplot(counts, 
                 main = "Number of samples(n=329)",
                 ylab = "Count",
                 las = 2,
                 ylim = c(0, 130))
text(x = x_pos, 
     y = counts + 2, 
     labels = counts, 
     srt = 90, 
     adj = 0, 
     cex = 1)
mtext("Site", side = 1, line = 6)
dev.off()