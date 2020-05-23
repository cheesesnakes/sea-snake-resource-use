# Resource use by two sympatric sea snakes (Hydrophiinae) in an anthropogenically dominated coastal marine environment

This repo contains the R code for analysis and data  for a study on the diet and habitat use of sea snakes on the west coast of India.

## Core Message

1. Diet and habitat use differ among sympatric sea snake species 
2. And is affected by the presence and variation in fishing intensity

## Abstract

Sea snakes are a recently evolved lineage of snakes found in the coastal tropical waters of the Indian and Western Pacific oceans. Previous studies have looked at assemblage composition, taxonomy, diet and aging ecology various parts of their range. Despite their wide distribution, little is known about their ecology in human dominated sea scapes and information from the Indian subcontinent is sorely lacking. The present study investigates competitive interactions and resource partitioning between two sympatric sea snake species from the west coast of India, *Hydrophis curtus* and *H. schistosus*. We characterised diet using Visual Gut Content Analysis and patterns in habitat use using fisheries dependent methods and landing surveys with fishermen. We used Stable Isotope Analysis to characterise species niche and overall resource use. We found that both species use distinct habitats, especially depth use (t = 8.513, p<<0.01). H. curtus used deeper waters overall (18.29±9.8m) and showed strong seasonal trends in depth use. The species showed distinct trophic niches, with little overlap in prey species (Morista overlap = 0.2878). Compared to previous studies, both species fed on a moderate range of prey families, but H. schistosus preferred a few species of Tetraodontids (29.16%). H. curtus is a trophic generalist, competes with syntopic sea snake species and is dominant in most assemblages. However, we show that H. schistosus exhibits higher plasticity in trophic resource use and seems to outcompete H. curtus in areas with high fishing intensity. The removal of predators such as sharks, bycatch interactions and resource depletion by fisheries may influence these interactions.

## Usage

<details>
  <summary> View results </summary>
  
  The R markdown file is configured to out put an HTML document with the results of the analysis. Paste the following code in the terminal. 
  
  
  ```R
  rmarkdown::render(input = "Resource Use Manuscripts.Rmd")
  ```
  
  </details>
 
 <details>
  <summary>Go through analysis</summary>
  
   - The sections of the analysis have been split into seperate R markdown files and can be run independently. 
    
   - R markdown files are best viewed in the R studio IDE.
    
   - Some of the analysis refer to custom functions that are included in the `Functions` folder.
    
   </details>
 
 ## Packages Used
 
 ## Liscence
