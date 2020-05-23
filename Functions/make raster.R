#Creating an empty raster with sampling extent

library(sp)
library(rgdal)
library(raster)

dep_int = read.csv("./Data/Fishing intensity_dep.csv")

#Converting to SpatialPointsdf

coordinates(dep_int) <- ~lon + lat

proj4string(dep_int) <- CRS("+init=epsg:4326")#setting projection to WGS 84 (lon/lat)

dep_int <- spTransform(dep_int, CRSobj = CRS("+init=epsg:3857"))#using spherical mercator
#spherical mercator enables accurate distance mesaurement in meters

# Define the resolution to be 10000 sq. meters
cell_size <- sqrt(1e+7)

# Initialize a raster layer
ras <- raster(extent(dep_int))

# Set the resolution to be

res(ras) <- c(cell_size, cell_size)
ras[] <- 0

projection(ras) <- CRS("+init=epsg:3857")

writeRaster(ras, "./Data/sampling_extent.tiff", format="GTiff", overwrite=TRUE)