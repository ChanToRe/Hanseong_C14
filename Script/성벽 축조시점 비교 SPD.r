library(rcarbon)
library(showtext)
library(sysfonts)
library(here)

font_add_google('Nanum Gothic', family='NanumGothic')
showtext_auto()
par(family="NanumGothic")

# Data Load
data <- read.csv(here("./Data/AMS_Master.csv"), encoding="EUC-KR")

########## 풍납토성 동성벽(1997) ##########
# Data Load
data_pntsEW1 <- subset(data, data$SiteName == "풍납토성 동성벽")

# Data Processing
pntsEW1_caldates <- calibrate(x=data_pntsEW1$BP, errors=data_pntsEW1$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsEW1_bins <- binPrep(sites=data_pntsEW1$SiteName, ages=data_pntsEW1$BP, h=100)

# Make SPD(raw)
pntsEW1_spd.raw <- spd(x=pntsEW1_caldates, bins=pntsEW1_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsEW1_spd.rol <- spd(x=pntsEW1_caldates, bins=pntsEW1_bins, timeRange=c(3000, 1000), runm=50)


########## 풍납토성 동성벽(2013) ##########
# Data Load
data_pntsEW2 <- subset(data, data$SiteName == "풍납토성 동성벽(학제)")

# Data Processing
pntsEW2_caldates <- calibrate(x=data_pntsEW2$BP, errors=data_pntsEW2$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsEW2_bins <- binPrep(sites=data_pntsEW2$SiteName, ages=data_pntsEW2$BP, h=100)

# Make SPD(raw)
pntsEW2_spd.raw <- spd(x=pntsEW2_caldates, bins=pntsEW2_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsEW2_spd.rol <- spd(x=pntsEW2_caldates, bins=pntsEW2_bins, timeRange=c(3000, 1000), runm=50)


########## 풍납토성 서성벽 ##########
# Data Load
data_pntsWW <- subset(data, data$SiteName == "풍납토성 서성벽")

# Data Processing
pntsWW_caldates <- calibrate(x=data_pntsWW$BP, errors=data_pntsWW$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsWW_bins <- binPrep(sites=data_pntsWW$SiteName, ages=data_pntsWW$BP, h=100)

# Make SPD(raw)
pntsWW_spd.raw <- spd(x=pntsWW_caldates, bins=pntsWW_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsWW_spd.rol <- spd(x=pntsWW_caldates, bins=pntsWW_bins, timeRange=c(3000, 1000), runm=50)


tiff(file=here("./Graph/탐색/Fig0_성벽 SPD 합본.tiff"), units='in', res=300, width=7, height=5)
plot(pntsWW_spd.rol, calendar = "BCAD", type="simple", col="green", lwd=1, lty=1)
plot(pntsEW1_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="red", lwd=1, lty=1)
plot(pntsEW2_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="blue", lwd=1, lty=1)
title(main="성벽 전체 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("풍납 동성벽1", "풍납 동성벽2", "풍납 서성벽"),
col=c("red", "blue", "green"),
lwd=2, cex=0.8, bg="white")
dev.off()