<img src="https://github.com/user-attachments/assets/8c3c01fe-07db-402b-8346-a5cad01ba046" align="left" width="150"/> 

<br>

# Radiocarbon Dates Data for an Integrated Study of the Baekje Hanseong

## Authors
- Ju, Chanhyeok (Pungnaptoseong Excavation Team, Seoul National Research Institute of Cultural Heritage)
- Dzon, Sewon (Archaeological Heritage Division, National Research Institute of Cultural Heritage)
- Park, Hyeonghoo (Pungnaptoseong Excavation Team, Seoul National Research Institute of Cultural Heritage)

## Abstract
This dataset compiles radiocarbon dates data from the Hanseong, the first capital of Baekje. The data were collected from archaeological excavation reports published since the 1980s, and reliability was secured through a process of standardization and four-step verification. Each case consists of uncalibrated dates, Lab ID, sample material, and archaeological context. This dataset provides a temporal framework for understanding the formation and development of Hanseong Baekje and supports integrated research on the early formation and development of Baekje through spatiotemporal and GIS-based analysis.

## Coverage


## Datafield
| FIELD | DESCRIPTION 
| :-----   | :----- | 
| Easting | The projected X coordinate (in meters) of the sample location in EPSG:5186. Where explicit coordinates were provided in excavation reports, those values were adopted; otherwise, positions were estimated through georeferencing excavation maps in ArcGIS. | 
| Northing | 	The projected Y coordinate (in meters) of the sample location in EPSG:5186. Where explicit coordinates were provided in excavation reports, those values were adopted; otherwise, positions were estimated through georeferencing excavation maps in ArcGIS. |
| Code | The Unique number of newly assigned analysis sample |
| SiteName | The name of the archaeological site where the sample was collected. In cases where excavations were conducted across multiple distinct areas within a single site, the specific names of the area is also included. |
| FeatureName | The specific name of the archaeological feature from which the sample was collected. |
| Context | The archaeological context of the sample, detailing the stratigraphic and functional relationship between the sample and its associated feature or layer. |
| SiteType | The classification of the archaeological feature from which the sample was retrieved (e.g., dwelling, pit, rampart, or tomb). |
| Sample ID | The identification number or designation assigned to the sample as recorded in the original archaeological excavation report. |
| Lab | The name of the institution or laboratory where the radiocarbon dating analysis was performed. |
| LabID | The unique identification name or code assigned to the sample by the laboratory that performed the radiocarbon dating analysis. |
| Material | The physical substance or material composition of the sample selected for radiocarbon dating analysis (e.g., charcoal, wood, charred seeds, or bone). |
| BP | The measured radiocarbon age of the sample, expressed in years Before Present (BP) prior to any atmospheric calibration. |
| Error | The measurement uncertainty or standard deviation associated with the uncalibrated radiocarbon age, as reported by the laboratory. |
| δ13C | The δ13C values of the analyzed samples, as reported by the laboratory. |
| References | A citation of the source from which the data has beendrawn |

## File-Tree
```
Data/
┣ AMS_Master_en.csv
┣ AMS_Master_ko.csv
Graph/
┣ Figure 1. Distribution of radiocaron dating sampling locations in the Hanseong.tif
┣ Figure 2. Locations of radiocarbon dating samples within Pungnaptoseong.tif
┣ Figure 3. Number of samples(Hanseong).tiff
┣ Figure 4. Summed Probability Distributions (SPD) of radiocarbon dates by site in the Hanseong.tiff
┣ SPD(Hanseong).tiff
┣ SPD(Mongchontoseong).tiff
┣ SPD(Outside of PNTS&MCTS).tiff
┣ SPD(Pnugnaptoseong).tiff
┗ SPD(Tombs).tiff
Script/
┣ barplot.r
┗ SPD.r
Reference.txt
README.md
```
## Funding statement
The publication of this paper and dataset was carried out and funded with the support of the 2026 research project of the Seoul National Research Institute of Cultural Heritage, South Korea, entitled “Academic Investigation of the Hanseong Baekje Capital Sites” (NRICH-2605-A66F-1-1).

## Licence
[![licensebuttons by](https://licensebuttons.net/l/by/3.0/88x31.png)](https://creativecommons.org/licenses/by/4.0) [Creative Common License CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).
