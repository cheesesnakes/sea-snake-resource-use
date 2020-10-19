# Cleaning new SIA data for analysis

library(tidyverse)

## import C and N data

sia_c <-  read.csv("./Data/SIA_CEAS_C_171020.csv")
sia_n <-  read.csv("./Data/SIA_CEAS_N_171020.csv")

## joining

sia_new <- sia_c%>%
  full_join(sia_n)

#write.csv(sia_new, "./Data/SIA_CEAS_171020.csv")

## Verifying with snake data

sia_new <- read.csv("./Data/SIA_CEAS_171020.csv")

snakes = read.csv("./Data/Sea-snakes_fish-dep_2018-19_250720.csv")

sia_samps <- sia_new%>%
  left_join(snakes)%>%
  select(Field.Code:Species, Gear.Type, Gut.Content, Blood, Scale)

## Combining SIA data

sia_old <- read.csv("./Data/Stable Isotope Data_CEAS_241119.csv")

sia_final <- sia_old%>%
  full_join(sia_new)

write.csv(sia_final, "./Data/Stable Isotope Data_CEAS_final_191020.csv")
