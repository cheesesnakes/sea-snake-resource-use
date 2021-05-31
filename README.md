# Resource use and the impacts of fisheries on two sympatric sea snake species on the West Coast of India.

**Authors:** Shawn Dsouza, Chetan Rao, Muralidharan M., and Kartik Shanker

Dakshin Foundation and Center for Ecological Science, IISc, Bangalore

This repo contains the R code for analysis and data  for a study on the diet and habitat use of sea snakes on the west coast of India.

The manuscript is currently under the peer review process. The citation will be updated upon publication.

[![DOI](https://zenodo.org/badge/265837034.svg)](https://zenodo.org/badge/latestdoi/265837034)

## Core Message

1. Diet and habitat use differ among sympatric sea snake species 
2. And is affected by the presence and variation in fishing intensity

## Abstract

Species interactions are central to community assembly and ecosystem functioning. Sea snakes play an important role as mesopredators and as intermediate links in coastal marine food webs. However, they are impacted by anthropogenic pressures such as fisheries throughout their range. We investigated differences in resource use between two sympatric sea snake species from the west coast of India, *Hydrophis curtus* and *H. schistosus*, and described the impacts of fishing on the interactions of these species. We compared habitat use, diet, and isotopic niche width between species to determine resource overlap. We then compared trophic overlap of each species with the fisheries in the region and tested the effect of fishing intensity on their isotopic niche width. We found that *H. curtus* used deeper habitats than *H. schistosus*, resulting in increased spatial overlap with fisheries. The two species also had distinct trophic niches and *H. curtus* prey formed a larger proportion of fishery catch on average than *H. schistosus*. This greater overlap could make *H. curtus* more vulnerable to the effects of fisheries. Both species exhibited expansion in short-term and long-term isotopic niche width along a gradient of fishing intensity which may indicate behavioural changes associated with the presence of fisheries. *H. curtus* is a trophic generalist, competes with syntopic species and is dominant in most assemblages. However, *H. schistosus* exhibits higher plasticity in resource use and may have an advantage over *H. curtus*. Thus, fishing could alter the relative abundance of these mesopredators with cascading effects through coastal food webs.

**Keywords**: sea snakes, Hydrophiinae, fisheries, resource use, trophic interactions, bycatch

## Usage

<details>
  <summary> View results </summary>
  
  The R markdown file is configured to out put an HTML document with the results of the analysis. Paste the following code in the terminal. With the working directory set to root of this reporsitory.
  
  
  ```R
  rmarkdown::render_site(input = "index.Rmd", encoding = "UTF")
  ```
  
  The analysis can also be viewed by opening the `View Results.html` file in any browser.
  
  </details>
 
 <details>
  <summary>Go through analysis</summary>
  
   - The sections of the analysis have been split into seperate R markdown files and can be run independently. 
    
   - R markdown files are best viewed in the R studio IDE.
    
   - Some of the analysis refer to custom functions that are included in the `Functions` folder.
   
   - Before working with the file locally a portable local environment can be activated to make sure you have all the dependencies by running `renv::activate()` and `renv::restore()`. You will need to intall the `renv` package for this. For more information please refer to https://rstudio.github.io/renv/articles/renv.html.
   
   </details>
 
 ## Software Used
<details>
  <summary> R Session info </summary>
  
  ```R                      
 version  R version 4.1.0 (2021-05-18)
 os       Ubuntu 20.10              
 system   x86_64, mingw32             
 ui       RStudio                     
 language (EN)                        
 collate  English_India.1252          
 ctype    English_India.1252          
  ```

  </details>

 ## Liscence and Copyright
 
 © Shawn Dsouza, Dakshin Foundation
 
Licensed under [MIT Liscence](LISCENCE)
