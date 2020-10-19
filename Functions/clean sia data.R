# Cleaning new SIA data for analysis

library(tidyverse)

## import C and N data

sia_c <-  read.csv("./Data/SIA_CEAS_C_171020.csv")
sia_n <-  read.csv("./Data/SIA_CEAS_N_171020.csv")

## joining

sia_new <- sia_c%>%
  full_join(sia_n)

#write.csv(sia_new, "./Data/SIA_CEAS_171020.csv")

