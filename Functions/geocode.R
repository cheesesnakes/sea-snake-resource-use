# Protocol for geocoding boat trips

## importing bathymetric data downloaded from GEBCO database

library(marmap)
library(tidyverse)

### raw depth data

depth <- readGEBCO.bathy("./Data/gebco_2020_n16.6_s15.6_w72.9_e73.9.nc")

### converting to data frame

depth = fortify.bathy(depth)%>%
  rename(lon = x, lat = y, depth = z)%>%
  filter(depth < 1)

## matching funtions for theta join

depth_match <- function(x,y){
  x <- -x
  x <= y+0.5 & x >= y-0.5 #interval for theta matching depth
}

lat_match <- function(x,y){
  x <= y+0.005 & x >= y-0.005 #interval for theta matching latitude
}

# geocoding function

geocode.trips <- function(df, fl, dep, trip = NULL) {
  
  # dependencies
  
  require(ggmap)
  require(fuzzyjoin)
  
  # Geocoding fishing location
  
  df <- df%>% ungroup() 
  
  df <-  mutate_(df, fl = as.character(fl))
  
  loc <- dplyr::select(df, fl)%>%distinct() # isolating location for faster computation
    
  loc  <- mutate_geocode(loc, location = fl)
  
  df <- left_join(df, loc)
    
  # Extracting coordinates from depth data

  df <- mutate_(df, depth = dep) # renaming depth variable
  
  df <- fuzzy_inner_join(df, y = depth, by = c("depth", "lat"), 
                         match_fun = list(depth = depth_match, lat = lat_match))
    
  df <- rename(df, lon = lon.y,# longitude from fishing location
           lat = lat.x)# latitude from depth data
  
  df <- dplyr::select(df, -c(lon.x, lat.y, depth.x, depth.y, fl))
  
  if (!is.null(trip)) {
    
    df <- distinct_(df, 'Date', trip, .keep_all = T)# removing introduced duplicates
  }  
  
  return(df)
}

