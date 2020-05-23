#Function for extracting intensity/abundance from points

map.extract <- function(df, var, func){
  
  foo <- df
  
  #Converting to SpatialPointsdf
  
  coordinates(foo) <- ~lon + lat
  
  proj4string(foo) <- CRS("+init=epsg:4326")#setting projection to WGS 84 (lon/lat)
  
  foo <- spTransform(foo, CRSobj = CRS("+init=epsg:3857"))#using spherical mercator
  
  #assigning intensity values to raster
  
  m <- rasterize(foo, ext, fun = func, field=var, update=TRUE)
}