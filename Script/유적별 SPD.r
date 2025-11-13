library(rcarbon)
library(showtext)
library(sysfonts)
library(here)

font_add_google('Nanum Gothic', family='NanumGothic')
showtext_auto()
par(family="NanumGothic")

########## 한성지역 전체 ##########
# Data Load
data <- read.csv(here("./Data/AMS_Master.csv"), encoding="EUC-KR")

# Data Processing
caldates <- calibrate(x=data$BP, errors=data$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
bins <- binPrep(sites=data$SiteName, ages=data$BP, h=100)

# Make SPD(raw)
spd.raw <- spd(x=caldates, bins=bins, timeRange=c(2200, 1200))

# Make SPD(rollin-mean : 50)
spd.rol <- spd(x=caldates, bins=bins, timeRange=c(2200, 1200), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_한성지역 전체 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(spd.rol, calendar = "BCAD")
plot(spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="한성지역 전체 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 풍납토성 현대 ##########
# Data Load
data_pntsHD <- subset(data, data$SiteName == "풍납토성 현대")

# Data Processing
pntsHD_caldates <- calibrate(x=data_pntsHD$BP, errors=data_pntsHD$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsHD_bins <- binPrep(sites=data_pntsHD$SiteName, ages=data_pntsHD$BP, h=100)

# Make SPD(raw)
pntsHD_spd.raw <- spd(x=pntsHD_caldates, bins=pntsHD_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsHD_spd.rol <- spd(x=pntsHD_caldates, bins=pntsHD_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 현대 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsHD_spd.rol, calendar = "BCAD")
plot(pntsHD_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 현대 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

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

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 동성벽(1997) SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsEW1_spd.rol, calendar = "BCAD")
plot(pntsEW1_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 동성벽(1997) SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 풍납토성 경당지구 ##########
# Data Load
data_pntsGD <- subset(data, data$SiteName == "풍납토성 경당지구")

# Data Processing
pntsGD_caldates <- calibrate(x=data_pntsGD$BP, errors=data_pntsGD$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsGD_bins <- binPrep(sites=data_pntsGD$SiteName, ages=data_pntsGD$BP, h=100)

# Make SPD(raw)
pntsGD_spd.raw <- spd(x=pntsGD_caldates, bins=pntsGD_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsGD_spd.rol <- spd(x=pntsGD_caldates, bins=pntsGD_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 경당지구 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsGD_spd.rol, calendar = "BCAD")
plot(pntsGD_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 경당지구 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 풍납토성 미래마을 ##########
# Data Load
data_pntsMR <- subset(data, data$SiteName == "풍납토성 미래마을")

# Data Processing
pntsMR_caldates <- calibrate(x=data_pntsMR$BP, errors=data_pntsMR$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsMR_bins <- binPrep(sites=data_pntsMR$SiteName, ages=data_pntsMR$BP, h=100)

# Make SPD(raw)
pntsMR_spd.raw <- spd(x=pntsMR_caldates, bins=pntsMR_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsMR_spd.rol <- spd(x=pntsMR_caldates, bins=pntsMR_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 미래마을 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsMR_spd.rol, calendar = "BCAD")
plot(pntsMR_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 미래마을 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

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

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 동성벽(2013) SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsEW2_spd.rol, calendar = "BCAD")
plot(pntsEW2_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 동성벽(2013) SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 풍납토성 태양열주택부지 ##########
# Data Load
data_pntsTY <- subset(data, data$SiteName == "풍납토성 동성벽(학제)")

# Data Processing
pntsTY_caldates <- calibrate(x=data_pntsTY$BP, errors=data_pntsTY$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsTY_bins <- binPrep(sites=data_pntsTY$SiteName, ages=data_pntsTY$BP, h=100)

# Make SPD(raw)
pntsTY_spd.raw <- spd(x=pntsTY_caldates, bins=pntsTY_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsTY_spd.rol <- spd(x=pntsTY_caldates, bins=pntsTY_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 태양열주택부지 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsTY_spd.rol, calendar = "BCAD")
plot(pntsTY_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 태양열주택부지 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 풍납토성 풍납동 기타 ##########
# Data Load
data_pntsETC <- subset(data, data$SiteName == "풍납동 474-2" | data$SiteName == "풍납동 281-4")

# Data Processing
pntsETC_caldates <- calibrate(x=data_pntsETC$BP, errors=data_pntsETC$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsETC_bins <- binPrep(sites=data_pntsETC$SiteName, ages=data_pntsETC$BP, h=100)

# Make SPD(raw)
pntsETC_spd.raw <- spd(x=pntsETC_caldates, bins=pntsETC_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsETC_spd.rol <- spd(x=pntsETC_caldates, bins=pntsETC_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 기타 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsETC_spd.rol, calendar = "BCAD")
plot(pntsETC_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 풍납동 기타 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 방이동 및 신천동 ##########
# Data Load
data_pntsBI <- subset(data, data$SiteName == "방이동 41-2" | data$SiteName == "방이동 48" | data$SiteName == "신천동 20-4")

# Data Processing
pntsBI_caldates <- calibrate(x=data_pntsBI$BP, errors=data_pntsBI$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsBI_bins <- binPrep(sites=data_pntsBI$SiteName, ages=data_pntsBI$BP, h=100)

# Make SPD(raw)
pntsBI_spd.raw <- spd(x=pntsBI_caldates, bins=pntsBI_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsBI_spd.rol <- spd(x=pntsBI_caldates, bins=pntsBI_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_방이동 및 신천동 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsBI_spd.rol, calendar = "BCAD")
plot(pntsBI_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="방이동 및 신천동 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 천호동, 암사동 ##########
# Data Load
data_pntsCHAS <- subset(data, data$SiteName == "암사동 193" | data$SiteName == "천호동 458-3" | data$SiteName == "천호동 328-9")

# Data Processing
pntsCHAS_caldates <- calibrate(x=data_pntsCHAS$BP, errors=data_pntsCHAS$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsCHAS_bins <- binPrep(sites=data_pntsCHAS$SiteName, ages=data_pntsCHAS$BP, h=100)

# Make SPD(raw)
pntsCHAS_spd.raw <- spd(x=pntsCHAS_caldates, bins=pntsCHAS_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsCHAS_spd.rol <- spd(x=pntsCHAS_caldates, bins=pntsCHAS_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_천호동 및 암사동 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsCHAS_spd.rol, calendar = "BCAD")
plot(pntsCHAS_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="천호동 및 암사동 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 몽촌토성 ##########
# Data Load
data_pntsMC <- subset(data, data$SiteName == "몽촌토성 북문지 내측(2013-2014)" 
| data$SiteName == "몽촌토성 북서벽 구 목책 설치구간" 
| data$SiteName == "몽촌토성 북문지 일원(통일신라시대)"
| data$SiteName == "몽촌토성 북문지 일원(삼국시대 1)"
| data$SiteName == "몽촌토성 북문지 일원(삼국시대 2)"
| data$SiteName == "몽촌토성 북문지 일원(삼국시대 3)"
)

# Data Processing
pntsMC_caldates <- calibrate(x=data_pntsMC$BP, errors=data_pntsMC$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsMC_bins <- binPrep(sites=data_pntsMC$SiteName, ages=data_pntsMC$BP, h=100)

# Make SPD(raw)
pntsMC_spd.raw <- spd(x=pntsMC_caldates, bins=pntsMC_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsMC_spd.rol <- spd(x=pntsMC_caldates, bins=pntsMC_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_몽촌토성 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsMC_spd.rol, calendar = "BCAD")
plot(pntsMC_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="몽촌토성 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

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

#Plot
tiff(file=here("./Graph/Fig0_풍납토성 서성벽 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsWW_spd.rol, calendar = "BCAD")
plot(pntsWW_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="풍납토성 서성벽 SPD", line=0.5, cex.main=1
)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 방이동 고분군 ##########
# Data Load
data_pntsBIT <- subset(data, data$SiteName == "방이동 고분군")

# Data Processing
pntsBIT_caldates <- calibrate(x=data_pntsBIT$BP, errors=data_pntsBIT$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsBIT_bins <- binPrep(sites=data_pntsBIT$SiteName, ages=data_pntsBIT$BP, h=100)

# Make SPD(raw)
pntsBIT_spd.raw <- spd(x=pntsBIT_caldates, bins=pntsBIT_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsBIT_spd.rol <- spd(x=pntsBIT_caldates, bins=pntsBIT_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_방이동 고분군 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsBIT_spd.rol, calendar = "BCAD")
plot(pntsBIT_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="방이동 고분군 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 석촌동 고분군 ##########
# Data Load
data_pntsSCT <- subset(data, data$SiteName == "석촌동 고분군")

# Data Processing
pntsSCT_caldates <- calibrate(x=data_pntsSCT$BP, errors=data_pntsSCT$Error, calCurves="intcal20", normalised=FALSE, verbose=FALSE)
pntsSCT_bins <- binPrep(sites=data_pntsSCT$SiteName, ages=data_pntsSCT$BP, h=100)

# Make SPD(raw)
pntsSCT_spd.raw <- spd(x=pntsSCT_caldates, bins=pntsSCT_bins, timeRange=c(3000, 1000))

# Make SPD(rollin-mean : 50)
pntsSCT_spd.rol <- spd(x=pntsSCT_caldates, bins=pntsSCT_bins, timeRange=c(3000, 1000), runm=50)

#Plot
tiff(file=here("./Graph/Fig0_석촌동 고분군 SPD.tiff"), units='in', res=300, width=7, height=2.5)
plot(pntsSCT_spd.rol, calendar = "BCAD")
plot(pntsSCT_spd.raw, add=TRUE, calendar="BCAD", type="simple", col="black", lwd=1, lty=2)
title(main="석촌동 고분군 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("Observed SPD", "Rolling-Mean : 50"),col=c(1,"grey"),lty=c(2,1),lwd=c(1,5),cex=0.8,bg="white")
dev.off()

########## 전체 플롯 ##########
tiff(file=here("./Graph/Fig0_개별 SPD 합본.tiff"), units='in', res=300, width=7, height=5)
plot(pntsMC_spd.rol, calendar = "BCAD", type="simple", col="#F6130E", lwd=1, lty=1)
plot(pntsBI_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#A73C2F", lwd=1, lty=1)
plot(pntsBIT_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#FCB90D", lwd=1, lty=1)
plot(pntsCHAS_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#6C6607", lwd=1, lty=1)
plot(pntsETC_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#9EC41B", lwd=1, lty=1)
plot(pntsEW1_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#07E501", lwd=1, lty=1)
plot(pntsEW2_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#13CF94", lwd=1, lty=1)
plot(pntsGD_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#166A60", lwd=1, lty=1)
plot(pntsHD_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#60CFFC", lwd=1, lty=1)
plot(pntsMR_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#2B79F8", lwd=1, lty=1)
plot(pntsSCT_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#FA10E6", lwd=1, lty=1)
plot(pntsTY_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#A12879", lwd=1, lty=1)
plot(pntsWW_spd.rol, add=TRUE, calendar = "BCAD", type="simple", col="#6C05FB", lwd=1, lty=1)
title(main="개별 전체 SPD", line=0.5, cex.main=1)
legend("topleft",legend=c("몽촌토성", "방이동", "방이동 고분군", "천호동 및 암사동", "풍납 기타", "풍납 동성벽1", "풍납 동성벽2"
, "풍납 경당", "풍납 현대", "풍납 미래", "석촌동 고분군", "풍납 태양", "풍납 서성벽" ),
col=c("#F6130E", "#A73C2F", "#FCB90D", "#6C6607", "#9EC41B", "#07E501", "#13CF94", "#166A60", "#60CFFC", "#2B79F8", "#FA10E6", "#A12879", "#6C05FB"),
lwd=2, cex=0.8, bg="white")
dev.off()
