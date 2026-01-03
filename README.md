<img src="https://github.com/user-attachments/assets/8c3c01fe-07db-402b-8346-a5cad01ba046" align="left" width="150"/> 

<br>

# Radiocarbon Dates Data for an Integrated Study of the Baekje Hanseong Region

## Authors
- Ju, Chanhyeok (Researcher, Seoul National Research Institute of Cultural Heritage)
- Dzon, Sewon (Curator, Archaeological Heritage Division, National Research Institute of Cultural Heritage)
- Park, Hyeonghoo (Researcher, Seoul National Research Institute of Cultural Heritage)

## Abstract
This dataset compiles radiocarbon dates data from the Hanseong region (?–A.D. 475), the first capital of Baekje. The data were collected from archaeological excavation reports published since the 1980s, and reliability was secured through a process of standardization and four-step verification. Each case consists of uncalibrated dates, Lab ID, sample material, and archaeological context. This dataset provides a temporal framework for understanding the formation and development of Hanseong Baekje and supports integrated research on the early formation and development of Baekje through spatiotemporal and GIS-based analysis.

## Coverage


## Datafield
| FIELD | DESCRIPTION 
| :-----   | :----- | 
| Latitude | The latitude of the sample collection point. Where specified in the reports, the recorded values were adopted; otherwise, coordinates were inferred by georeferencing site layout maps within ArcGIS. | 
| Longitude | The longitude of the sample collection point. Where specified in the reports, the recorded values were adopted; otherwise, coordinates were inferred by georeferencing site layout maps within ArcGIS. |
| Code | The Unique number of newly assigned analysis sample |
| Site Name | The name of the archaeological site where the sample was collected. In cases where excavations were conducted across multiple distinct areas within a single site, the specific names of the area is also included. |
| Site ID | The specific name of the archaeological feature from which the sample was collected. |
| Context | The archaeological context of the sample, detailing the stratigraphic and functional relationship between the sample and its associated feature or layer. |
| Site Type | The classification of the archaeological feature from which the sample was retrieved (e.g., dwelling, pit, rampart, or tomb). |
| Sample ID | The identification number or designation assigned to the sample as recorded in the original archaeological excavation report. |
| Lab | The name of the institution or laboratory where the radiocarbon dating analysis was performed. |
| Lab ID | The unique identification name or code assigned to the sample by the laboratory that performed the radiocarbon dating analysis. |
| Material | The physical substance or material composition of the sample selected for radiocarbon dating analysis (e.g., charcoal, wood, charred seeds, or bone). |
| BP | The measured radiocarbon age of the sample, expressed in years Before Present (BP) prior to any atmospheric calibration. |
| Error | The measurement uncertainty or standard deviation associated with the uncalibrated radiocarbon age, as reported by the laboratory. |
| Rerferences | A citation of the source from which the data has beendrawn |

## File-Tree
```
Data/
┣ AMS_Master_en.csv
┣ AMS_Master_en.xlsx
┣ AMS_Master_ko.csv
┗ AMS_Master_ko.xlsx
Graph/
┣ SPD(All).tiff
┣ SPD(Hanseong Region).tiff
┣ SPD(Mongchontoseong).tiff
┣ SPD(Outside of PNTS&MCTS).tiff
┣ SPD(Pnugnaptoseong).tiff
┗ SPD(Tombs).tiff
Script/
┗ SPD.r
README.md
```
## Funding statement
The publication of this paper and dataset was carried out and funded with the support of the 2026 research project of the Seoul National Research Institute of Cultural Heritage, South Korea, entitled “Academic Investigation of the Hanseong Baekje Capital Sites” (NRICH-2505-A66F-1).

## Licence
[![licensebuttons by](https://licensebuttons.net/l/by/3.0/88x31.png)](https://creativecommons.org/licenses/by/4.0) [Creative Common License CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/).