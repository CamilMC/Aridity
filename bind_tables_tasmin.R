# Libraries ---- 

library(raster)
library(dplyr)
library(stringr)
# Masks ---- 
land_mask <- raster("/home/crapartc/Aridity/Masks/land_sea_mask_1degree.nc4") 
land_mask.df <- as.data.frame(land_mask, xy = T) %>% setNames(c("lon","lat","lm")) # 0 if ocean, 1 if land

ipcc_regions <- shapefile("/home/crapartc/Aridity/Masks/IPCC-WGI-reference-regions-v4.shp") %>% spTransform(crs("EPSG:4326")) 
ipcc_regions.raster <- ipcc_regions %>% rasterize(land_mask)
ipcc_regions.df <- as.data.frame(ipcc_regions.raster, xy = T) %>% setNames(c("lon","lat","Continent","Type","Name","Acronym"))
# AWI ---- 

## Annual ---- 

awi_annual <- mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.tasmin.txt"), model = "historical", period = "1850_1880") %>%
  rbind( mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.tasmin.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.tasmin.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.tasmin.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.tasmin.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.tasmin.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.tasmin.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.tasmin.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.tasmin.txt"), model = "SSP585", period = "2070_2100"))

awi_land <- merge(awi_annual, land_mask.df, by = c("lon", "lat")) 
awi_ipcc <- merge(awi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(awi_ipcc, "/bettik/crapartc/IPCC/awi.tasmin_ipcc.txt")

## Monthly ---- 

awi_monthly <- mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.jan.tasmin.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.jan.tasmin.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.jan.tasmin.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.jan.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.jan.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.jan.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.jan.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.jan.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.jan.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.fev.tasmin.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.fev.tasmin.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.fev.tasmin.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.fev.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.fev.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.fev.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.fev.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.fev.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.fev.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.mar.tasmin.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.mar.tasmin.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.mar.tasmin.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.mar.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.mar.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.mar.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.mar.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.mar.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.mar.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.avr.tasmin.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.avr.tasmin.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.avr.tasmin.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.avr.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.avr.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.avr.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.avr.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.avr.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.avr.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.may.tasmin.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.may.tasmin.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.may.tasmin.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.may.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.may.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.may.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.may.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.may.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.may.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.jun.tasmin.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.jun.tasmin.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.jun.tasmin.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.jun.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.jun.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.jun.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.jun.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.jun.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.jun.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.jul.tasmin.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.jul.tasmin.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.jul.tasmin.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.jul.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.jul.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.jul.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.jul.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.jul.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.jul.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.agu.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.agu.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.agu.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.agu.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.agu.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.agu.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.sep.tasmin.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.sep.tasmin.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.sep.tasmin.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.sep.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.sep.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.sep.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.sep.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.sep.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.sep.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.oct.tasmin.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.oct.tasmin.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.oct.tasmin.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.oct.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.oct.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.oct.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.oct.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.oct.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.oct.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.nov.tasmin.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.nov.tasmin.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.nov.tasmin.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.nov.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.nov.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.nov.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.nov.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.nov.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.nov.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.dec.tasmin.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.dec.tasmin.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.dec.tasmin.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.dec.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.dec.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.dec.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.dec.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.dec.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.dec.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

awim_land <- merge(awi_monthly, land_mask.df, by = c("lon", "lat")) 
awim_ipcc <- merge(awim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(awim_ipcc, "/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt")

# BCC  ---- 

## Annual ---- 

bcc_annual <- mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.tasmin.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.tasmin.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.tasmin.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.tasmin.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.tasmin.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.tasmin.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.tasmin.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.tasmin.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.tasmin.txt"), model = "SSP585", period = "2070_2100"))

bcc_land <- merge(bcc_annual, land_mask.df, by = c("lon", "lat")) 
bcc_ipcc <- merge(bcc_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(bcc_ipcc, "/bettik/crapartc/IPCC/bcc.tasmin_ipcc.txt")

## Monthly ----

bcc_monthly <- mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.jan.tasmin.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.jan.tasmin.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.jan.tasmin.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.jan.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.jan.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.jan.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.jan.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.jan.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.jan.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.fev.tasmin.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.fev.tasmin.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.fev.tasmin.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.fev.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.fev.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.fev.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.fev.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.fev.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.fev.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.mar.tasmin.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.mar.tasmin.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.mar.tasmin.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.mar.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.mar.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.mar.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.mar.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.mar.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.mar.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.avr.tasmin.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.avr.tasmin.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.avr.tasmin.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.avr.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.avr.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.avr.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.avr.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.avr.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.avr.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.may.tasmin.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.may.tasmin.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.may.tasmin.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.may.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.may.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.may.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.may.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.may.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.may.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.jun.tasmin.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.jun.tasmin.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.jun.tasmin.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.jun.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.jun.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.jun.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.jun.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.jun.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.jun.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.jul.tasmin.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.jul.tasmin.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.jul.tasmin.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.jul.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.jul.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.jul.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.jul.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.jul.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.jul.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.agu.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.agu.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.agu.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.agu.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.agu.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.agu.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.sep.tasmin.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.sep.tasmin.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.sep.tasmin.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.sep.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.sep.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.sep.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.sep.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.sep.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.sep.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.oct.tasmin.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.oct.tasmin.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.oct.tasmin.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.oct.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.oct.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.oct.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.oct.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.oct.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.oct.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.nov.tasmin.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.nov.tasmin.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.nov.tasmin.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.nov.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.nov.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.nov.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.nov.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.nov.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.nov.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.dec.tasmin.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.dec.tasmin.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.dec.tasmin.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.dec.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.dec.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.dec.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.dec.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.dec.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.dec.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

bccm_land <- merge(bcc_monthly, land_mask.df, by = c("lon", "lat")) 
bccm_ipcc <- merge(bccm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(bccm_ipcc, "/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt")
# CNRM ---- 

## Annual ---- 

cnrm_annual <- mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.tasmin.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.tasmin.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.tasmin.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.tasmin.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.tasmin.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.tasmin.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.tasmin.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.tasmin.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.tasmin.txt"), model = "SSP585", period = "2070_2100"))

cnrm_land <- merge(cnrm_annual, land_mask.df, by = c("lon", "lat")) 
cnrm_ipcc <- merge(cnrm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrm_ipcc, "/bettik/crapartc/IPCC/cnrm.tasmin_ipcc.txt")

## Monthly -----

cnrm_monthly <- mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.jan.tasmin.txt"), model = "historical", period = "1850_1880", month = 1) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.jan.tasmin.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.jan.tasmin.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.jan.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.jan.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.jan.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.jan.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.jan.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.jan.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.fev.tasmin.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.fev.tasmin.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.fev.tasmin.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.fev.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.fev.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.fev.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.fev.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.fev.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.fev.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.mar.tasmin.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.mar.tasmin.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.mar.tasmin.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.mar.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.mar.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.mar.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.mar.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.mar.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.mar.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.avr.tasmin.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.avr.tasmin.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.avr.tasmin.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.avr.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.avr.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.avr.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.avr.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.avr.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.avr.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.may.tasmin.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.may.tasmin.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.may.tasmin.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.may.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.may.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.may.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.may.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.may.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.may.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.jun.tasmin.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.jun.tasmin.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.jun.tasmin.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.jun.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.jun.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.jun.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.jun.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.jun.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.jun.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.jul.tasmin.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.jul.tasmin.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.jul.tasmin.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.jul.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.jul.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.jul.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.jul.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.jul.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.jul.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.agu.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.agu.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.agu.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.agu.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.agu.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.agu.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.sep.tasmin.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.sep.tasmin.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.sep.tasmin.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.sep.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.sep.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.sep.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.sep.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.sep.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.sep.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.oct.tasmin.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.oct.tasmin.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.oct.tasmin.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.oct.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.oct.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.oct.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.oct.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.oct.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.oct.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.nov.tasmin.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.nov.tasmin.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.nov.tasmin.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.nov.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.nov.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.nov.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.nov.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.nov.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.nov.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.dec.tasmin.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.dec.tasmin.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.dec.tasmin.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.dec.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.dec.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.dec.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.dec.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.dec.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.dec.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cnrmm_land <- merge(cnrm_monthly, land_mask.df, by = c("lon", "lat")) 
cnrmm_ipcc <- merge(cnrmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrmm_ipcc, "/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt")

# INM -------

## Annual
inm_annual <- mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.tasmin.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.tasmin.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.tasmin.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.tasmin.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.tasmin.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.tasmin.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.tasmin.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.tasmin.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.tasmin.txt"), model = "SSP585", period = "2070_2100"))

inm_land <- merge(inm_annual, land_mask.df, by = c("lon", "lat")) 
inm_ipcc <- merge(inm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inm_ipcc, "/bettik/crapartc/IPCC/inm.tasmin_ipcc.txt")

## Monthly 

inm_monthly <- mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.jan.tasmin.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.jan.tasmin.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.jan.tasmin.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.jan.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.jan.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.jan.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.jan.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.jan.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.jan.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.fev.tasmin.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.fev.tasmin.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.fev.tasmin.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.fev.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.fev.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.fev.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.fev.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.fev.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.fev.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.mar.tasmin.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.mar.tasmin.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.mar.tasmin.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.mar.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.mar.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.mar.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.mar.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.mar.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.mar.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.avr.tasmin.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.avr.tasmin.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.avr.tasmin.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.avr.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.avr.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.avr.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.avr.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.avr.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.avr.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.may.tasmin.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.may.tasmin.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.may.tasmin.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.may.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.may.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.may.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.may.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.may.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.may.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.jun.tasmin.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.jun.tasmin.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.jun.tasmin.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.jun.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.jun.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.jun.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.jun.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.jun.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.jun.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.jul.tasmin.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.jul.tasmin.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.jul.tasmin.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.jul.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.jul.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.jul.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.jul.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.jul.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.jul.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.agu.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.agu.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.agu.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.agu.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.agu.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.agu.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.sep.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.sep.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.sep.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.sep.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.sep.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.sep.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.oct.tasmin.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.oct.tasmin.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.oct.tasmin.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.oct.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.oct.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.oct.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.oct.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.oct.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.oct.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.nov.tasmin.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.nov.tasmin.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.nov.tasmin.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.nov.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.nov.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.nov.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.nov.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.nov.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.nov.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.dec.tasmin.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.dec.tasmin.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.dec.tasmin.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.dec.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.dec.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.dec.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.dec.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.dec.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.dec.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

inmm_land <- merge(inm_monthly, land_mask.df, by = c("lon", "lat")) 
inmm_ipcc <- merge(inmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inmm_ipcc, "/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt")
# MPI ---- 
## Annual ----
mpi_annual <- mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.tasmin.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.tasmin.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.tasmin.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.tasmin.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.tasmin.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.tasmin.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.tasmin.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.tasmin.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.tasmin.txt"), model = "SSP585", period = "2070_2100"))

mpi_land <- merge(mpi_annual, land_mask.df, by = c("lon", "lat")) 
mpi_ipcc <- merge(mpi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpi_ipcc, "/bettik/crapartc/IPCC/mpi.tasmin_ipcc.txt")

## Monthly ----

mpi_monthly <- mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.jan.tasmin.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.jan.tasmin.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.jan.tasmin.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.jan.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.jan.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.jan.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.jan.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.jan.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.jan.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.fev.tasmin.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.fev.tasmin.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.fev.tasmin.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.fev.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.fev.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.fev.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.fev.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.fev.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.fev.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.mar.tasmin.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.mar.tasmin.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.mar.tasmin.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.mar.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.mar.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.mar.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.mar.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.mar.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.mar.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.avr.tasmin.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.avr.tasmin.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.avr.tasmin.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.avr.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.avr.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.avr.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.avr.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.avr.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.avr.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.may.tasmin.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.may.tasmin.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.may.tasmin.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.may.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.may.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.may.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.may.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.may.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.may.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.jun.tasmin.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.jun.tasmin.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.jun.tasmin.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.jun.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.jun.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.jun.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.jun.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.jun.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.jun.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.jul.tasmin.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.jul.tasmin.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.jul.tasmin.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.jul.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.jul.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.jul.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.jul.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.jul.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.jul.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.agu.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.agu.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.agu.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.agu.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.agu.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.agu.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.sep.tasmin.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.sep.tasmin.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.sep.tasmin.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.sep.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.sep.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.sep.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.sep.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.sep.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.sep.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.oct.tasmin.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.oct.tasmin.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.oct.tasmin.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.oct.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.oct.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.oct.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.oct.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.oct.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.oct.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.nov.tasmin.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.nov.tasmin.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.nov.tasmin.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.nov.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.nov.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.nov.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.nov.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.nov.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.nov.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.dec.tasmin.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.dec.tasmin.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.dec.tasmin.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.dec.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.dec.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.dec.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.dec.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.dec.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.dec.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mpim_land <- merge(mpi_monthly, land_mask.df, by = c("lon", "lat")) 
mpim_ipcc <- merge(mpim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpim_ipcc, "/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt")

# MRI ---- 

## Annual ---- 

mri_annual <- mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.tasmin.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.tasmin.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.tasmin.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.tasmin.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.tasmin.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.tasmin.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.tasmin.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.tasmin.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.tasmin.txt"), model = "SSP585", period = "2070_2100"))

mri_land <- merge(mri_annual, land_mask.df, by = c("lon", "lat")) 
mri_ipcc <- merge(mri_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mri_ipcc, "/bettik/crapartc/IPCC/mri.tasmin_ipcc.txt")

## Monthly -----

mri_monthly <- mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.jan.tasmin.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.jan.tasmin.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.jan.tasmin.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.jan.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.jan.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.jan.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.jan.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.jan.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.jan.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.fev.tasmin.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.fev.tasmin.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.fev.tasmin.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.fev.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.fev.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.fev.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.fev.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.fev.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.fev.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.mar.tasmin.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.mar.tasmin.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.mar.tasmin.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.mar.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.mar.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.mar.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.mar.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.mar.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.mar.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.avr.tasmin.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.avr.tasmin.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.avr.tasmin.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.avr.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.avr.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.avr.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.avr.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.avr.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.avr.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.may.tasmin.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.may.tasmin.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.may.tasmin.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.may.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.may.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.may.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.may.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.may.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.may.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.jun.tasmin.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.jun.tasmin.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.jun.tasmin.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.jun.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.jun.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.jun.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.jun.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.jun.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.jun.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.jul.tasmin.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.jul.tasmin.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.jul.tasmin.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.jul.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.jul.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.jul.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.jul.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.jul.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.jul.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.agu.tasmin.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.agu.tasmin.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.agu.tasmin.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.agu.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.agu.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.agu.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.agu.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.agu.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.agu.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.sep.tasmin.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.sep.tasmin.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.sep.tasmin.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.sep.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.sep.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.sep.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.sep.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.sep.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.sep.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.oct.tasmin.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.oct.tasmin.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.oct.tasmin.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.oct.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.oct.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.oct.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.oct.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.oct.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.oct.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.nov.tasmin.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.nov.tasmin.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.nov.tasmin.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.nov.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.nov.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.nov.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.nov.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.nov.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.nov.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.dec.tasmin.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.dec.tasmin.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.dec.tasmin.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.dec.tasmin.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.dec.tasmin.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.dec.tasmin.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.dec.tasmin.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.dec.tasmin.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.dec.tasmin.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mrim_land <- merge(mri_monthly, land_mask.df, by = c("lon", "lat")) 
mrim_ipcc <- merge(mrim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mrim_ipcc, "/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt")

# ALL tasmin ANNUAL ----- 

all_annual <- mutate(read.table("/bettik/crapartc/IPCC/awi.tasmin_ipcc.txt"), source = "AWI") %>% 
  rbind(mutate(read.table("/bettik/crapartc/IPCC/bcc.tasmin_ipcc.txt"), source = "BCC")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/cnrm.tasmin_ipcc.txt"), source = "CNRM")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/inm.tasmin_ipcc.txt"), source = "INM")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/mpi.tasmin_ipcc.txt"), source = "MPI")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/mri.tasmin_ipcc.txt"), source = "MRI"))

write.table(filter(all_annual, lm == 1), "/bettik/crapartc/All_annual/tasmin.all_annual.txt")

# ALL tasmin MONTHLY ----

all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 1), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 1), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 1), source = "MRI")) 

write.table(all_january, "/bettik/crapartc/All_mensual/tasmin.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 2), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 2), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 2), source = "MRI")) 

write.table(all_february, "/home/crapartc/Aridity/tasmin.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 3), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 3), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 3), source = "MRI")) 

write.table(all_march, "/bettik/crapartc/All_mensual/tasmin.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 4), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 4), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 4), source = "MRI")) 

write.table(all_april, "/bettik/crapartc/All_mensual/tasmin.all_atasminil.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 5), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 5), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 5), source = "MRI")) 

write.table(all_may, "/bettik/crapartc/All_mensual/tasmin.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 6), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 6), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 6), source = "MRI")) 

write.table(all_june, "/bettik/crapartc/All_mensual/tasmin.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 7), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 7), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 7), source = "MRI")) 

write.table(all_july, "/bettik/crapartc/All_mensual/tasmin.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 8), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 8), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 8), source = "MRI")) 

write.table(all_august, "/bettik/crapartc/All_mensual/tasmin.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 9), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 9), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 9), source = "MRI")) 

write.table(all_september, "/bettik/crapartc/All_mensual/tasmin.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 10), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 10), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 10), source = "MRI")) 

write.table(all_october, "/bettik/crapartc/All_mensual/tasmin.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 11), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 11), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 11), source = "MRI")) 

write.table(all_november, "/bettik/crapartc/All_mensual/tasmin.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/awim.tasmin_ipcc.txt"), lm == 1, month == 12), source = "AWI") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/bccm.tasmin_ipcc.txt"),lm == 1, month == 12), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tasmin_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tasmin_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tasmin_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tasmin_ipcc.txt"), lm == 1, month == 12), source = "MRI")) 

write.table(all_december, "/bettik/crapartc/All_mensual/tasmin.all_december.txt")