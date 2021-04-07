# CNC 21 short course on Bayesian non-parametric methods for clustering

This repository contains ressources for the short course on *Bayesian non-parametric methods for clustering* at the [8th Channel Network Conference](https://cnc21.sciencesconf.org/).

## Targeted audience

**Disclaimer:** participants of this course are expected to have a working knowledge of R. Previous exposure to the Bayesian framework analysis and MCMC algorithms will be helpful to understand the concepts covered in this course.

## Technical requirements

Please make sure you have `R (v>= 4.0)` install. You can update it from the [CRAN](https://cran.r-project.org/)

For this course, you will need the following packages:

 - `coda`
 - `CRPdemo`
 - `expm`
 - `lcmm`
 - `NormPsy`
 - `NPflow`
 - `PReMiuM`
 - `viridis`


They can be installed with the following commands:

```{r}
install.packages("coda")
install.packages("expm")
install.packages("lcmm")
install.packages("NormPsy")
install.packages("NPflow")
install.packages("PReMiuM")
install.packages("viridis")

install.packages("devtools")
devtools::install_github("borishejblum/CRPdemo")
```

##Class schedule

 - 9h-10h: [Lecture part I](https://raw.githubusercontent.com/borishejblum/BNPclusteringCNC21/main/BNPclustering_part1.html) 🤓
 
 - 10h-10h15: _break_ 🥳
 
 - 10h15-10h45: [practicals 1](https://raw.githubusercontent.com/borishejblum/BNPclusteringCNC21/main/Practical_Part1.Rmd) 🧑‍💻
 
 - 10h45-11h15: [Lecture part II](https://github.com/borishejblum/BNPclusteringCNC21/raw/main/Bayesian_NP_clustering_part2.pdf) 🤓
 
 - 11h15-11h30: _break_ 🥳
 
 - 11h30-12h30: [practicals 2](https://raw.githubusercontent.com/borishejblum/BNPclusteringCNC21/main/Practical_Part2.Rmd) 🧑‍💻

## Course feedback

Please give your feedback on the class in the following anonymous form:
https://forms.gle/2zEjVhK14tBN63oG6

----
Boris Hejblum & Anaïs Rouanet
