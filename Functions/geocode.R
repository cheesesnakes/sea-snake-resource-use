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