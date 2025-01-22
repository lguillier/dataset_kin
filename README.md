# SynCom Biofilm Interaction Modelling

## Description
This repository contains all data sets, R scripts, and additional resources associated with the submitted manuscript titled "Guided assembly of multispecies positive biofilms targeting undesirable bacteria." The study explores the design and evaluation of synthetic microbial communities (SynComs) capable of forming beneficial biofilms that inhibit the growth of pathogenic bacteria. It employs a combination of experimental biofilm models and mathematical modelling to understand and optimize microbial interactions within biofilms.

## Content
- **Data/**
  - This folder contains raw biovolume CLSM kinetics.
  - The folder is subdivided in three sub-directories: "Monocultures", "Co-inoculation" and "Recruitement"
  
- **Scripts/**
  - This folder aims at providing scripts for fitting growth models and competition model to biovolume data.
  - The folder is subdivided according to model types (Baranyi & Roberts, Jameson and Lokta-Volterra)
  
- **Results/**
  - This folder stores output files that helped to prepare figures and tables of manuscript.
  - It also contains detailed results of the statistical tests performed.

## Dependencies
The analysis scripts are written in R. The following R packages are required to run the scripts:
- `nlsMicrobio`: Used for nonlinear regression in predictive microbiology.
- `gauseR`: Simplifies fitting of Lotka-Volterra models.

To install these dependencies, run:
```R
install.packages("nlsMicrobio")
install.packages("gauseR")
