#Function for creating plot for each Gear/Species

int.plot <- function(mdf, gear, name, title.face = NULL){
  
  require(ggmap)
  require(ggplot2)
  require(metR)
  require(viridis)
  
  ggmap(base)+
    metR::geom_contour2(data = depth, aes(x = lon, y = lat, z = depth),
                        breaks=seq(-10, -500, -10), colour="black", size = 0.1, linetype = "dashed")+
    metR::geom_text_contour(data = depth, aes(x = lon, y = lat, z = depth), skip = 1,
                            parse = T,check_overlap = T, size = 1)+
    geom_raster(data = mdf, aes(x = x, y = y, fill = layer, alpha = layer), color = "grey50")+
    coord_quickmap()+
    scale_x_continuous(limits = c(72.75, 73.75))+
    scale_y_continuous(limits = c(15.6, 16.6))+
    scale_fill_viridis(name = name, option = "B")+
    scale_alpha_continuous(range = c(0.7, 0.8), guide = F)+
    #scale_y_continuous(limits = c(73.1, 73.8))+
    labs(title = gear, x = "Longitude", y = "Latitude")+
    theme(plot.title = element_text(hjust = 0.5, face = title.face),
          legend.text = element_text(size = 10),
          text = element_text(size = 15))
}
