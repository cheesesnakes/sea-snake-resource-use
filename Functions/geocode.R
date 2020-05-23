# Protocol for geocoding boat trips

## matching funtions for theta join

depth_match <- function(x,y){
  x <- -x
  x <= y+0.5 & x >= y-0.5 #interval for theta matching depth
}

lat_match <- function(x,y){
  x <= y+0.005 & x >= y-0.005 #interval for theta matching latitude
}

# geocoding function

geocode.trips <- function(df, fl, dep) {
  # Geocoding local intensity data with depth
  df = df%>%
    ungroup()%>%
    mutate_(fl = as.character(fl))%>%
    mutate_geocode(location = fl)
  
  # Extracting coordinates from depth data
  
  require(fuzzyjoin)
  
  df <- df%>%
    mutate_(depth = dep)%>%
    fuzzy_inner_join(y = depth, by = c("depth", "lat"), 
                     match_fun = list(depth = depth_match,
                                      lat = lat_match))
    rename(lon = lon.y,# longitude from fishing location
           lat = lat.x)# latitude from depth data
    
  df <- distinct(df, Date, Boat.name, .keep_all = T)# removing introduced duplicates
}

# sea snake distribution example

#Geocoding sea snake density

snakes_den = snakes_den%>%
  ungroup()%>%
  mutate(Fishing.Location = as.character(Fishing.Location))%>%
  mutate_geocode(location = Fishing.Location)

#Extracting point data from depth and location

library(fuzzyjoin)

#matching funtions for theta join

depth_match <- function(x,y){
  x <- -x
  x <= y+0.5 & x >= y-0.5 #interval for theta matching depth
}

lat_match <- function(x,y){
  x <= y+0.005 & x >= y-0.005 #interval for theta matching latitude
}

snakes_den <- snakes_den%>%
  mutate(depth = Depth.Caught..m.)%>%
  fuzzy_inner_join(y = depth, by = c("depth", "lat"), 
                   match_fun = list(depth = depth_match,
                                    lat = lat_match))%>%
  dplyr::select(Date, Boat.Name.Owner, Species, Fishing.Location, Depth.Caught..m., 
                lon.y, lat.x, CPUE, n)%>%#dplyr::selecting relevant variables
  rename(lon = lon.y,# longitude from fishing location
         lat = lat.x)%>%# latitude from depth data
  distinct(Date, Boat.Name.Owner, Species, Fishing.Location, Depth.Caught..m., .keep_all = T)

write.csv(snakes_den, "./Data/snakes-density.csv")#saved data set to reduce compute time
