# Function converting the raster into df for plotting

map.df <- function(m){
  
  require(raster)
  
  ##Reprojecting int_map
  
  r <- projectRaster(m, crs = CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))
  
  ## Creating dataframe
  
  mdf <- as.data.frame(r, xy = T)%>%drop_na()
}
