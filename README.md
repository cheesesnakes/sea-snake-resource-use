# Changing mesopredator species dynamics in an anthropogenically dominated seascape.

**Authors:** Shawn Dsouza, Chetan Rao, Muralidharan M., and Kartik Shanker

Dakshin Foundation and Center for Ecological Science, IISc, Bangalore

This repo contains the R code for analysis and data  for a study on the diet and habitat use of sea snakes on the west coast of India.

## Core Message

1. Diet and habitat use differ among sympatric sea snake species 
2. And is affected by the presence and variation in fishing intensity

## Abstract

Species interactions are central to community assembly and ecosystem functioning. Sea snakes play an important role as mesopredators and as intermediate links in coastal marine food webs. They are impacted by anthropogenic pressures such as fisheries throughout their range. We investigated differences in resource use between two sympatric sea snake species from the west coast of India, Hydrophis curtus and H. schistosus, and described the impacts of fishing on the interactions of these species. We characterised habitat use, diet, isotopic niche width to determine resource overlap between species. We then compared trophic overlap of each species with the fisheries in the region and tested the effect of fishing intensity on their isotopic niche width. We found that H. curtus used deeper habitats than H. schistosus, resulting in increased spatial overlap with fisheries. The species had distinct trophic niches and H. curtus prey formed a larger proportion of fishery catch on average than H. schistosus. This greater overlap could make H. curtus more vulnerable to the effects of fisheries. Both species exhibited expansion in short-term and long-term isotopic niche width along a gradient of fishing intensity which may indicate behavioural changes associated with the presence of fisheries. H. curtus is a trophic generalist, competes with syntopic species and is dominant in most assemblages. However, H. schistosus exhibits higher plasticity in resource use and may have an advantage over H. curtus. Thus, fishing could alter the relative abundance of these mesopredators with cascading effects through coastal food webs.

**Keywords**: sea snakes, Hydrophiid, fisheries, resource use, trophic interactions, bycatch

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
   
   - Before working with the file locally a portable local environment can be activated to make sure you have all the dependencies by running `renv::activate()`. You will need to intall the `renv` package for this.
   
   </details>
 
 ## Software Used
<details>
  <summary> R Session info </summary>
  
  ```R                      
 version  R version 4.0.0 (2020-04-24)
 os       Windows 10 x64              
 system   x86_64, mingw32             
 ui       RStudio                     
 language (EN)                        
 collate  English_India.1252          
 ctype    English_India.1252          
 tz       Asia/Calcutta               
 date     2020-05-23                  
  ```

  </details>

<details>
  <summary> Packages used </summary>
  
  ```R
 package        * version  date       lib source        
 adehabitatMA     0.3.14   2020-01-13 [1] CRAN (R 4.0.0)
 assertthat       0.2.1    2019-03-21 [1] CRAN (R 4.0.0)
 backports        1.1.6    2020-04-05 [1] CRAN (R 4.0.0)
 base64enc        0.1-3    2015-07-28 [1] CRAN (R 4.0.0)
 bit              1.1-15.2 2020-02-10 [1] CRAN (R 4.0.0)
 bit64            0.9-7    2017-05-08 [1] CRAN (R 4.0.0)
 bitops           1.0-6    2013-08-17 [1] CRAN (R 4.0.0)
 blob             1.2.1    2020-01-20 [1] CRAN (R 4.0.0)
 bookdown         0.19     2020-05-15 [1] CRAN (R 4.0.0)
 broom            0.5.6    2020-04-20 [1] CRAN (R 4.0.0)
 cellranger       1.1.0    2016-07-27 [1] CRAN (R 4.0.0)
 checkmate        2.0.0    2020-02-06 [1] CRAN (R 4.0.0)
 cli              2.0.2    2020-02-28 [1] CRAN (R 4.0.0)
 clipr            0.7.0    2019-07-23 [1] CRAN (R 4.0.0)
 cluster          2.1.0    2019-06-19 [2] CRAN (R 4.0.0)
 coda             0.19-3   2019-07-05 [1] CRAN (R 4.0.0)
 codetools        0.2-16   2018-12-24 [2] CRAN (R 4.0.0)
 colorspace       1.4-1    2019-03-18 [1] CRAN (R 4.0.0)
 crayon           1.3.4    2017-09-16 [1] CRAN (R 4.0.0)
 curl             4.3      2019-12-02 [1] CRAN (R 4.0.0)
 data.table       1.12.8   2019-12-09 [1] CRAN (R 4.0.0)
 DBI              1.1.0    2019-12-15 [1] CRAN (R 4.0.0)
 dbplyr           1.4.3    2020-04-19 [1] CRAN (R 4.0.0)
 digest           0.6.25   2020-02-23 [1] CRAN (R 4.0.0)
 dplyr          * 0.8.5    2020-03-07 [1] CRAN (R 4.0.0)
 ellipse          0.4.1    2018-01-05 [1] CRAN (R 4.0.0)
 ellipsis         0.3.0    2019-09-20 [1] CRAN (R 4.0.0)
 evaluate         0.14     2019-05-28 [1] CRAN (R 4.0.0)
 fansi            0.4.1    2020-01-08 [1] CRAN (R 4.0.0)
 farver           2.0.3    2020-01-16 [1] CRAN (R 4.0.0)
 forcats        * 0.5.0    2020-03-01 [1] CRAN (R 4.0.0)
 fs               1.4.1    2020-04-04 [1] CRAN (R 4.0.0)
 fuzzyjoin      * 0.1.6    2020-05-15 [1] CRAN (R 4.0.0)
 generics         0.0.2    2018-11-29 [1] CRAN (R 4.0.0)
 ggmap          * 3.0.0    2019-02-04 [1] CRAN (R 4.0.0)
 ggplot2        * 3.3.0    2020-03-05 [1] CRAN (R 4.0.0)
 glue             1.4.0    2020-04-03 [1] CRAN (R 4.0.0)
 gridExtra        2.3      2017-09-09 [1] CRAN (R 4.0.0)
 gtable           0.3.0    2019-03-25 [1] CRAN (R 4.0.0)
 haven            2.2.0    2019-11-08 [1] CRAN (R 4.0.0)
 highr            0.8      2019-03-20 [1] CRAN (R 4.0.0)
 hms              0.5.3    2020-01-08 [1] CRAN (R 4.0.0)
 htmltools        0.4.0    2019-10-04 [1] CRAN (R 4.0.0)
 httr             1.4.1    2019-08-05 [1] CRAN (R 4.0.0)
 jpeg             0.1-8.1  2019-10-24 [1] CRAN (R 4.0.0)
 jsonlite         1.6.1    2020-02-02 [1] CRAN (R 4.0.0)
 knitr            1.28     2020-02-06 [1] CRAN (R 4.0.0)
 labeling         0.3      2014-08-23 [1] CRAN (R 4.0.0)
 lattice        * 0.20-41  2020-04-02 [2] CRAN (R 4.0.0)
 lifecycle        0.2.0    2020-03-06 [1] CRAN (R 4.0.0)
 lsr              0.5      2015-03-02 [1] CRAN (R 4.0.0)
 lubridate      * 1.7.8    2020-04-06 [1] CRAN (R 4.0.0)
 magrittr         1.5      2014-11-22 [1] CRAN (R 4.0.0)
 marmap         * 1.0.3    2019-07-03 [1] CRAN (R 4.0.0)
 MASS             7.3-51.5 2019-12-20 [2] CRAN (R 4.0.0)
 Matrix           1.2-18   2019-11-27 [2] CRAN (R 4.0.0)
 memoise          1.1.0    2017-04-21 [1] CRAN (R 4.0.0)
 metR           * 0.7.0    2020-04-10 [1] CRAN (R 4.0.0)
 mgcv             1.8-31   2019-11-09 [2] CRAN (R 4.0.0)
 modelr           0.1.7    2020-04-30 [1] CRAN (R 4.0.0)
 munsell          0.5.0    2018-06-12 [1] CRAN (R 4.0.0)
 ncdf4            1.17     2019-10-23 [1] CRAN (R 4.0.0)
 nlme             3.1-147  2020-04-13 [2] CRAN (R 4.0.0)
 permute        * 0.9-5    2019-03-12 [1] CRAN (R 4.0.0)
 pillar           1.4.4    2020-05-05 [1] CRAN (R 4.0.0)
 pkgconfig        2.0.3    2019-09-22 [1] CRAN (R 4.0.0)
 plyr             1.8.6    2020-03-03 [1] CRAN (R 4.0.0)
 png              0.1-7    2013-12-03 [1] CRAN (R 4.0.0)
 purrr          * 0.3.4    2020-04-17 [1] CRAN (R 4.0.0)
 pwr              1.3-0    2020-03-17 [1] CRAN (R 4.0.0)
 R6               2.4.1    2019-11-12 [1] CRAN (R 4.0.0)
 raster         * 3.1-5    2020-04-19 [1] CRAN (R 4.0.0)
 RColorBrewer     1.1-2    2014-12-07 [1] CRAN (R 4.0.0)
 Rcpp             1.0.4.6  2020-04-09 [1] CRAN (R 4.0.0)
 readr          * 1.3.1    2018-12-21 [1] CRAN (R 4.0.0)
 readxl           1.3.1    2019-03-13 [1] CRAN (R 4.0.0)
 repr             1.1.0    2020-01-28 [1] CRAN (R 4.0.0)
 reprex           0.3.0    2019-05-16 [1] CRAN (R 4.0.0)
 reshape2         1.4.4    2020-04-09 [1] CRAN (R 4.0.0)
 rgdal          * 1.4-8    2019-11-27 [1] CRAN (R 4.0.0)
 RgoogleMaps      1.4.5.3  2020-02-12 [1] CRAN (R 4.0.0)
 rjags            4-10     2019-11-06 [1] CRAN (R 4.0.0)
 rjson            0.2.20   2018-06-08 [1] CRAN (R 4.0.0)
 rlang            0.4.6    2020-05-02 [1] CRAN (R 4.0.0)
 rmarkdown        2.1      2020-01-20 [1] CRAN (R 4.0.0)
 RSQLite          2.2.0    2020-01-07 [1] CRAN (R 4.0.0)
 rstudioapi       0.11     2020-02-07 [1] CRAN (R 4.0.0)
 rvest            0.3.5    2019-11-08 [1] CRAN (R 4.0.0)
 scales           1.1.1    2020-05-11 [1] CRAN (R 4.0.0)
 sessioninfo      1.1.1    2018-11-05 [1] CRAN (R 4.0.0)
 shape            1.4.4    2018-02-07 [1] CRAN (R 4.0.0)
 SIBER          * 2.1.5    2020-05-12 [1] CRAN (R 4.0.0)
 skimr            2.1.1    2020-04-16 [1] CRAN (R 4.0.0)
 sp             * 1.4-1    2020-02-28 [1] CRAN (R 4.0.0)
 spatstat.utils   1.17-0   2020-02-07 [1] CRAN (R 4.0.0)
 stringi          1.4.6    2020-02-17 [1] CRAN (R 4.0.0)
 stringr        * 1.4.0    2019-02-10 [1] CRAN (R 4.0.0)
 tibble         * 3.0.1    2020-04-20 [1] CRAN (R 4.0.0)
 tidyr          * 1.0.3    2020-05-07 [1] CRAN (R 4.0.0)
 tidyselect       1.1.0    2020-05-11 [1] CRAN (R 4.0.0)
 tidyverse      * 1.3.0    2019-11-21 [1] CRAN (R 4.0.0)
 utf8             1.1.4    2018-05-24 [1] CRAN (R 4.0.0)
 vctrs            0.3.0    2020-05-11 [1] CRAN (R 4.0.0)
 vegan          * 2.5-6    2019-09-01 [1] CRAN (R 4.0.0)
 vegetarian     * 1.2      2012-10-29 [1] CRAN (R 4.0.0)
 viridis        * 0.5.1    2018-03-29 [1] CRAN (R 4.0.0)
 viridisLite    * 0.3.0    2018-02-01 [1] CRAN (R 4.0.0)
 withr            2.2.0    2020-04-20 [1] CRAN (R 4.0.0)
 xfun             0.13     2020-04-13 [1] CRAN (R 4.0.0)
 xml2             1.3.2    2020-04-23 [1] CRAN (R 4.0.0)
 yaml             2.2.1    2020-02-01 [1] CRAN (R 4.0.0)
  ```
  
  </details>
  
 ## Liscence and Copyright
 
 © Shawn Dsouza, Dakshin Foundation
 
Liscensed under [MIT Liscence](LISCENCE)
