# Investigating Cognitive Control via fMRI: A Comprehensive Data Analysis Report

## Abstract

This report presents a detailed analysis of the Flanker Dataset using functional magnetic resonance imaging (fMRI) to explore the neural basis of cognitive control. The study focuses on investigating differences in the BOLD signal between Congruent and Incongruent Flanker trials. Various analyses, including cognitive control assessment, quality control, preprocessing, statistical modeling, and post-analysis, were conducted using the FSL software. The findings contribute valuable insights into the neural mechanisms underlying cognitive control and response inhibition.

## Table of Contents

- [Introduction](#introduction)
- [Experimental Design](#experimental-design)
- [Data Collection](#data-collection)
- [Used Tools](#used-tools)
- [Analysis](#analysis)
  - [Cognitive Control Assessment](#cognitive-control-assessment)
  - [Quality Control](#quality-control)
  - [Preprocessing](#preprocessing)
  - [First-Level Analysis](#first-level-analysis)
  - [Second-Level Analysis](#second-level-analysis)
  - [Third-Level Analysis](#third-level-analysis)
  - [ROI Analysis](#roi-analysis)
- [Results and Interpretation](#results-and-interpretation)
- [Discussion](#discussion)
- [Conclusion](#conclusion)
- [References](#references)
- [Submission](#submission)
- [Scripts](#scripts)


## Introduction

Cognitive control processes, particularly attention and response inhibition, were investigated using the Flanker Dataset and fMRI. This report details the experimental design, data collection procedures, and a comprehensive analysis pipeline.

## Experimental Design

The Flanker task, a well-established paradigm for studying cognitive control, was employed. Participants were presented with Congruent and Incongruent Flanker trials, requiring a button press based on the central arrow's direction.

## Data Collection

Twenty-six adult participants underwent fMRI scans while performing the Flanker task. High-resolution anatomical images and functional scans were acquired.

## Used Tools

### FSL fMRI Analysis
Utilize FSL for preprocessing, statistical analysis, and ROI analysis to identify brain regions involved in cognitive control.
### Automated Workflows
Employ **bash scripting** to automate large-scale data processing and ROI analysis, streamlining the workflow.
### R Integration
Integrate **R scripts** for advanced analysis of brain region activity during task performance.

## Analysis

### Cognitive Control Assessment

To ensure reliable results, cognitive control was assessed by analyzing reaction times, demonstrating robust differences between congruent and incongruent conditions.

### Quality Control

Quality control procedures identified motion artifacts in specific subjects, addressing potential confounds in the subsequent analysis.

### Preprocessing

Anatomical and functional images underwent preprocessing steps, including brain extraction, temporal filtering, motion correction, and registration to the MNI152 template.

### First-Level Analysis

The first-level analysis included GLM modeling with contrasts for congruent and incongruent conditions. Post-stats analysis identified activated pixels and clusters.

### Second-Level Analysis

Different algorithms, including Fixed Effect, Flame 1, and Simple OLS, were applied in the second-level analysis to determine the most effective approach.

### Third-Level Analysis

Exploratory group analysis was performed using Flame 1 based on the Fixed Effect algorithm to assess the effectiveness of different algorithms.

### ROI Analysis

Regions of interest (ROIs) were identified and confirmed using a confirmation test to ensure the significance of the identified clusters.

## Results and Interpretation
Results and Interpretation discussed in the [report](https://github.com/Omar-Saad-ELGharbawy/Investigating-Cognitive-Control-via-fMRI/blob/main/fMRI%20FSL%20Analysis.pdf)

## Discussion

The results revealed indirect relationships between confirmed clusters and the flanker task. The discussion interprets these findings in the context of existing literature and theoretical frameworks.

## Conclusion

Despite indirect relationships observed, the study provides valuable insights into the neural mechanisms underlying cognitive control and response inhibition during the Flanker task.

## References

Kelly, A.M., Uddin, L.Q., Biswal, B.B., Castellanos, F.X., Milham, M.P. (2008). Competition between functional brain networks mediates behavioral variability. Neuroimage, 39(1):527-37
- Soares JM, Magalhães R, Moreira PS, Sousa A, Ganz E, Sampaio A, Alves V, Marques P and Sousa N (2016) A Hitchhiker’s Guide to Functional Magnetic Resonance Imaging. Front. Neurosci. 10:515. doi: 10.3389/fnins.2016.00515
- AndysBrainBook website (https://andysbrainbook.readthedocs.io/en/latest/)

## Submission

This [Report](https://github.com/Omar-Saad-ELGharbawy/Investigating-Cognitive-Control-via-fMRI/blob/main/fMRI%20FSL%20Analysis.pdf), authored by Omar Saad Elgharbawy, was submitted as the final project for the "Neuroimaging" course, under the guidance of Prof. Meena Makary.

## Scripts

The repository includes all [scripts](scripts/) utilized in the analysis. The entire analysis was conducted on Linux Ubuntu 22.04 using WSL 2.0 from a Windows environment.
