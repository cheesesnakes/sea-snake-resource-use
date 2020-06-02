#Function for creating plot for each Gear/Species

int.plot <- function(mdf, gear, name, title.face = NULL){
  
  require(ggmap)
  require(ggplot2)
  require(metR)
  require(viridis)
  
  ggmap(base)+
    metR::geom_contour2(data = depth, aes(x = lon, y = lat, z = depth),
                        breaks=seq(-10, -80, -10), colour="black", size = 0.1, linetype = "dashed")+
    metR::geom_text_contour(data = depth, aes(x = lon, y = lat, z = depth), skip = 1,
                            parse = T,check_overlap = T, size = 1)+
<<<<<<< HEAD
    geom_raster(data = mdf, aes(x = x, y = y, fill =layer), alpha = 0.8, color = "grey50")+
=======
    geom_raster(data = mdf, aes(x = x, y = y, fill =layer), alpha = 0.6)+
>>>>>>> 7becf1bfcfd46d12d0332f3098398155f4c02dd2
    coord_quickmap()+
    scale_fill_viridis(name = name, option = "B")+
    #scale_y_continuous(limits = c(73.1, 73.8))+
    labs(title = gear, x = "Longitude", y = "Latitude")+
    theme(plot.title = element_text(hjust = 0.5, face = title.face),
          legend.text = element_text(size = 10),
          text = element_text(size = 15))
}
