# Required libraries

library(tidyverse)
library(lubridate)

# Data import

snakes = read.csv("./Data/Sea-snakes_fish-dep_2018-19_250720.csv")

# setting ggplot theme

theme_set(theme_bw()+
            theme(legend.position = "top",
                  text = element_text(size = 20)
            )
)