#Creating an empty raster with sampling extent

library(sp)
library(rgdal)
library(raster)
library(tidyverse)

dep_int = read.csv("./Data/Fishing intensity_dep.csv")

#Converting to SpatialPointsdf

coordinates(dep_int) <- ~lon + lat

proj4string(dep_int) <- CRS("+init=epsg:4326")#setting projection to WGS 84 (lon/lat)

dep_int <- spTransform(dep_int, CRSobj = CRS("+init=epsg:3857"))#using spherical mercator
#spherical mercator enables accurate distance mesaurement in meters

# Define the resolution to be 10000 sq. meters
cell_size <- sqrt(1e+7)

# Initialize a raster layer
ras <- raster(extent(dep_int)+c(0,10000,-20000,5000))

# Set the resolution to be

res(ras) <- c(cell_size, cell_size)
ras[] <- 0

projection(ras) <- CRS("+init=epsg:3857")

# removing grid ccells that overlap with land

library(sf)

## loading india shape file

india <- read_sf("./Data/2011_Dist.shp")

sindhudurg <- india%>%
  filter(DISTRICT == "Sindhudurg")%>%
  dplyr::select(DISTRICT, geometry)

sindhudurg <- st_transform(sindhudurg, crs = CRS("+init=epsg:3857"))

## setting overlaping values to NA

ras <- mask(ras, sindhudurg, inverse = T)

## saving sampling grid

writeRaster(ras, "./Data/sampling_extent.tiff", format="GTiff", overwrite=TRUE)
