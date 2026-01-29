library(rcarbon)
library(here)

# Data Load
data <- read.csv(here("./Data/AMS_Master_en.csv"))

########## Hanseong ##########
# Data Processing
caldates <- calibrate(x=data$BP, errors=data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
bins <- binPrep(sites=data$SiteName, ages=data$BP, h=5)

# Make SPD(raw)
spd.raw <- spd(x=caldates, bins=bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
spd.rol <- spd(x=caldates, bins=bins, timeRange=c(3000, 1000), runm=50)

# Plot
tiff(file=here("./Graph/SPD(Hanseong).tiff"), units='in', res=300, width=7, height=2.5)
plot(spd.rol, calendar = "BCAD")
plot(spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="SPD(Hanseong)", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## Pungnaptoseong ##########
# Data Load
data_pnts <- subset(data, data$SiteName == "Pungnaptoseong Hyundai" | data$SiteName == "Pungnaptoseong East Rampart(1st)" |
data$SiteName == "Pungnaptoseong Gyeongdang" | data$SiteName == "Pungnaptoseong KEB dormitory" | data$SiteName == "Pungnaptoseong Mirae" | data$SiteName == "Pungnaptoseong East Rampart(2nd)" | data$SiteName == "Pungnaptoseong Solar House" | data$SiteName == "474-2 Pungnap-dong" | data$SiteName == "281-4 Pungnap-dong")

# Data Processing
pnts_caldates <- calibrate(x=data_pnts$BP, errors=data_pnts$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pnts_bins <- binPrep(sites=data_pnts$SiteName, ages=data_pnts$BP, h=5)

# Make SPD(raw)
pnts_spd.raw <- spd(x=pnts_caldates, bins=pnts_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pnts_spd.rol <- spd(x=pnts_caldates, bins=pnts_bins, timeRange=c(3000, 1000), runm=50)

# Plot
tiff(file=here("./Graph/SPD(Pnugnaptoseong).tiff"), units='in', res=300, width=7, height=2.5)
plot(pnts_spd.rol, calendar = "BCAD")
plot(pnts_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="SPD(Pnugnaptoseong)", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## Mongchontoseong ##########
# Data Load
data_mcts <- subset(data, data$SiteName == "Mongchontoseong North Gate Site, Inner Side (2013-2014)" | data$SiteName == "Mongchontoseong Northwest Rampart, Wooden Palisade Ditch Section" | data$SiteName == "Mongchontoseong North Gate Site Area (Unified Silla Period)"
| data$SiteName == "Mongchontoseong North Gate Site Area (Three Kingdoms Period 1)" | data$SiteName == "Mongchontoseong North Gate Site Area (Three Kingdoms Period 2)" | data$SiteName == "Mongchontoseong North Gate Site Area (Three Kingdoms Period 3)")

# Data Processing
mcts_caldates <- calibrate(x=data_mcts$BP, errors=data_mcts$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
mcts_bins <- binPrep(sites=data_mcts$SiteName, ages=data_mcts$BP, h=5)

# Make SPD(raw)
mcts_spd.raw <- spd(x=mcts_caldates, bins=mcts_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
mcts_spd.rol <- spd(x=mcts_caldates, bins=mcts_bins, timeRange=c(3000, 1000), runm=50)

# Plot
tiff(file=here("./Graph/SPD(Mongchontoseong).tiff"), units='in', res=300, width=7, height=2.5)
plot(mcts_spd.rol, calendar = "BCAD")
plot(mcts_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="SPD(Mongchontoseong)", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## Tombs ##########
# Data Load
data_tombs <- subset(data, data$SiteName == "Bangi-dong Tombs" | data$SiteName == "Seokchon-dong Tombs")

# Data Processing
tombs_caldates <- calibrate(x=data_tombs$BP, errors=data_tombs$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
tombs_bins <- binPrep(sites=data_tombs$SiteName, ages=data_tombs$BP, h=5)

# Make SPD(raw)
tombs_spd.raw <- spd(x=tombs_caldates, bins=tombs_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
tombs_spd.rol <- spd(x=tombs_caldates, bins=tombs_bins, timeRange=c(3000, 1000), runm=50)

# Plot
tiff(file=here("./Graph/SPD(Tombs).tiff"), units='in', res=300, width=7, height=2.5)
plot(tombs_spd.rol, calendar = "BCAD")
plot(tombs_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="SPD(Tombs)", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## Outside of Pungnaptoseong&Mongchontoseong ##########
# Data Load
data_outside <- subset(data, data$SiteName == "41-2 Bangi-dong" | data$SiteName == "48 Bangi-dong" | data$SiteName == "20-4 Sincheon-dong" | data$SiteName == "193 Amsa-dong" | data$SiteName == "478-3 Cheonho-dong" | data$SiteName == "328-9 Cheonho-dong")

# Data Processing
outside_caldates <- calibrate(x=data_outside$BP, errors=data_outside$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
outside_bins <- binPrep(sites=data_outside$SiteName, ages=data_outside$BP, h=5)

# Make SPD(raw)
outside_spd.raw <- spd(x=outside_caldates, bins=outside_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
outside_spd.rol <- spd(x=outside_caldates, bins=outside_bins, timeRange=c(3000, 1000), runm=50)

# Plot
tiff(file=here("./Graph/SPD(Outside of PNTS&MCTS).tiff"), units='in', res=300, width=7, height=2.5)
plot(outside_spd.rol, calendar = "BCAD")
plot(outside_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="SPD(Outside of PNTS&MCTS)", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## All ##########
# Plot
tiff(file=here("./Graph/Figure 3. Summed Probability Distributions (SPD) of radiocarbon dates by site in the Hanseong.tiff"), units='in', res=300, width=7, height=4)
plot(pnts_spd.rol, calendar = "BCAD", type="simple", col="red", lwd=2, lty=1)
plot(mcts_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="blue", lwd=2, lty=1)
plot(tombs_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="green", lwd=2, lty=1)
plot(outside_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="orange", lwd=2, lty=1)
title(main="SPD(Hanseong)", line=0.5, cex.main=1)
legend("topleft",legend=c("Pungnaptoseong", "Mongchontoseong", "Tombs", "Outside of PNTS&MCTS"),
col=c("red", "blue", "green ", "orange"),lwd=2, cex=0.8, bg="white")
dev.off()