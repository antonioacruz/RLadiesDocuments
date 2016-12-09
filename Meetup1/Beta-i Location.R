library(leaflet)

setwd("C:/Users/carolina/Desktop/RStudio")

beta_map <- leaflet() %>%
  addTiles() %>%
  addMarkers(lat=38.732441666667, lng=-9.1423861111111, popup="Beta-i")

beta_map