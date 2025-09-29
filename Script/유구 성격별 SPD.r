library(rcarbon)
library(showtext)
library(sysfonts)
library(here)

font_add_google('Nanum Gothic', family='NanumGothic')
showtext_auto()
par(family="NanumGothic")

# Data Load
data <- read.csv(here("./Data/AMS_Master.csv"), encoding="EUC-KR")

########## 주거지 ##########
# Data Load
ph_data <- subset(data, data$SiteType == "주거지")

# Data Processing
ph_caldates <- calibrate(x=ph_data$BP, errors=ph_data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
ph_bins <- binPrep(sites=ph_data$SiteName, ages=ph_data$BP, h=100)

# Make SPD(raw)
ph_spd.raw <- spd(x=ph_caldates, bins=ph_bins, timeRange=c(2200, 1200))

# Make SPD(rollin-mean : 50)
ph_spd.rol <- spd(x=ph_caldates, bins=ph_bins, timeRange=c(2200, 1200), runm=50)

#Plot
tiff(file=here("./Graph/유구 성격별/Fig0_한성지역 주거지 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(ph_spd.rol, calendar = "BCAD")
plot(ph_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="한성지역 주거지 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 분묘 ##########
# Data Load
tomb_data <- subset(data, data$SiteType == "분묘")

# Data Processing
tomb_caldates <- calibrate(x=tomb_data$BP, errors=tomb_data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
tomb_bins <- binPrep(sites=tomb_data$SiteName, ages=tomb_data$BP, h=100)

# Make SPD(raw)
tomb_spd.raw <- spd(x=tomb_caldates, bins=tomb_bins, timeRange=c(2200, 1200))

# Make SPD(rollin-mean : 50)
tomb_spd.rol <- spd(x=tomb_caldates, bins=tomb_bins, timeRange=c(2200, 1200), runm=50)

#Plot
tiff(file=here("./Graph/유구 성격별/Fig0_한성지역 분묘 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(tomb_spd.rol, calendar = "BCAD")
plot(tomb_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="한성지역 분묘 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 수혈 ##########
# Data Load
p_data <- subset(data, data$SiteType == "수혈")

# Data Processing
p_caldates <- calibrate(x=p_data$BP, errors=p_data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
p_bins <- binPrep(sites=p_data$SiteName, ages=p_data$BP, h=100)

# Make SPD(raw)
p_spd.raw <- spd(x=p_caldates, bins=p_bins, timeRange=c(2200, 1200))

# Make SPD(rollin-mean : 50)
p_spd.rol <- spd(x=p_caldates, bins=p_bins, timeRange=c(2200, 1200), runm=50)

#Plot
tiff(file=here("./Graph/유구 성격별/Fig0_한성지역 수혈 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(p_spd.rol, calendar = "BCAD")
plot(p_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="한성지역 수혈 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 성벽 ##########
# Data Load
w_data <- subset(data, data$SiteType == "성벽")

# Data Processing
w_caldates <- calibrate(x=w_data$BP, errors=w_data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
w_bins <- binPrep(sites=w_data$SiteName, ages=w_data$BP, h=100)

# Make SPD(raw)
w_spd.raw <- spd(x=w_caldates, bins=w_bins, timeRange=c(2200, 1200))

# Make SPD(rollin-mean : 50)
w_spd.rol <- spd(x=w_caldates, bins=w_bins, timeRange=c(2200, 1200), runm=50)

#Plot
tiff(file=here("./Graph/유구 성격별/Fig0_풍납토성 성벽 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(w_spd.rol, calendar = "BCAD")
plot(w_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 성벽 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 기타 ##########
# Data Load
etc_data <- subset(data, data$SiteType != "성벽" | data$SiteType != "수혈" | data$SiteType != "분묘" | data$SiteType != "주거지")

# Data Processing
etc_caldates <- calibrate(x=etc_data$BP, errors=etc_data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
etc_bins <- binPrep(sites=etc_data$SiteName, ages=etc_data$BP, h=100)

# Make SPD(raw)
etc_spd.raw <- spd(x=etc_caldates, bins=etc_bins, timeRange=c(2200, 1200))

# Make SPD(rollin-mean : 50)
etc_spd.rol <- spd(x=etc_caldates, bins=etc_bins, timeRange=c(2200, 1200), runm=50)

#Plot
tiff(file=here("./Graph/유구 성격별/Fig0_한성지역 기타 유구 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(etc_spd.rol, calendar = "BCAD")
plot(etc_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="한성지역 기타 유구 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 전체 플롯 ##########

tiff(file=here("./Graph/유구 성격별/Fig0_유구 성격별 전체 SPD 합본.tiff"), units='in', res=300, width=7, height=5)
plot(etc_spd.rol, calendar = "BCAD", type="simple", col="#9EC41B", lwd=1, lty=1)
plot(ph_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#F6130E", lwd=1, lty=1)
plot(w_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#A73C2F", lwd=1, lty=1)
plot(p_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#FCB90D", lwd=1, lty=1)
plot(tomb_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#6C6607", lwd=1, lty=1)
title(main="유구 성격별 전체 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("주거지", "성벽", "수혈", "분묘", "기타"),
col=c("#F6130E", "#A73C2F", "#FCB90D", "#6C6607", "#9EC41B"),
lwd=2, cex=0.8, bg="white")
dev.off()

test1 <- calibrate(x=data[64, ]$BP, errors=data[64, ]$Error, calCurves="intcal20", ids=1, normalised=FALSE, verbose=FALSE)
test2 <- calibrate(x=data[66, ]$BP, errors=data[66, ]$Error, calCurves="intcal20", ids=2, normalised=FALSE, verbose=FALSE)
testtt <- combine(test1, test2)
tiff(file=here("./Graph/유구 성격별/Fig0_test.tiff"), units='in', res=300, width=5, height=5)
plot(testtt, HPD=TRUE, credMass=0.95, calendar="BCAD")
dev.off()

testtt