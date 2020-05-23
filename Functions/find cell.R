# Finding grid cell in which snake was captured

cell.ext <- function(df){
  
  require(raster)
  require(sp)
  
  r <- raster::projectRaster(ext, crs = CRS("+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"))
  
  xy <- df
  
  coordinates(xy) <- ~lon + lat
  
  proj4string(xy) <- CRS("+init=epsg:4326")#setting projection to WGS 84 (lon/lat)
  
  #xy <- spTransform(xy, CRSobj = CRS("+init=epsg:3857"))#using spherical mercator
  
  c <- xyFromCell(r, cellFromXY(r, xy))
  
}