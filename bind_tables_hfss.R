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

awi_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind( mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

awi_land <- merge(awi_annual, land_mask.df, by = c("lon", "lat")) 
awi_ipcc <- merge(awi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(awi_ipcc, "/home/crapartc/Aridity/CMIP6/awi.hhss_ipcc.txt")

## Monthly ---- 

awi_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/awi.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

awim_land <- merge(awi_monthly, land_mask.df, by = c("lon", "lat")) 
awim_ipcc <- merge(awim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(awim_ipcc, "/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt")

# BCC  ---- 

## Annual ---- 

bcc_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

bcc_land <- merge(bcc_annual, land_mask.df, by = c("lon", "lat")) 
bcc_ipcc <- merge(bcc_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(bcc_ipcc, "/home/crapartc/Aridity/CMIP6/bcc.hhss_ipcc.txt")

## Monthly ----

bcc_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/bcc.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

bccm_land <- merge(bcc_monthly, land_mask.df, by = c("lon", "lat")) 
bccm_ipcc <- merge(bccm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(bccm_ipcc, "/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt")
# CAMS ----
## Annual ----

cams_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

cams_land <- merge(cams_annual, land_mask.df, by = c("lon", "lat")) 
cams_ipcc <- merge(cams_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cams_ipcc, "/home/crapartc/Aridity/CMIP6/cams.hhss_ipcc.txt")

## Monthly ----

cams_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cams.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

camsm_land <- merge(cams_monthly, land_mask.df, by = c("lon", "lat")) 
camsm_ipcc <- merge(camsm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(camsm_ipcc, "/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt")
# CESM ----

## Annual ----

cesm_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

cesm_land <- merge(cesm_annual, land_mask.df, by = c("lon", "lat")) 
cesm_ipcc <- merge(cesm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cesm_ipcc, "/home/crapartc/Aridity/CMIP6/cesm.hhss_ipcc.txt")

## Monthly ----

cesm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cesm.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cesmm_land <- merge(cesm_monthly, land_mask.df, by = c("lon", "lat")) 
cesmm_ipcc <- merge(cesmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cesmm_ipcc, "/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt")

# CMCC ----

## Annual -----

cmcc_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

cmcc_land <- merge(cmcc_annual, land_mask.df, by = c("lon", "lat")) 
cmcc_ipcc <- merge(cmcc_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmcc_ipcc, "/home/crapartc/Aridity/CMIP6/cmcc.hhss_ipcc.txt")

## Monthly ---- 

cmcc_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cmcc.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cmccm_land <- merge(cmcc_monthly, land_mask.df, by = c("lon", "lat")) 
cmccm_ipcc <- merge(cmccm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmccm_ipcc, "/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt")

# CNRM ---- 

## Annual ---- 

cnrm_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

cnrm_land <- merge(cnrm_annual, land_mask.df, by = c("lon", "lat")) 
cnrm_ipcc <- merge(cnrm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrm_ipcc, "/home/crapartc/Aridity/CMIP6/cnrm.hhss_ipcc.txt")

## Monthly -----

cnrm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/cnrm.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cnrmm_land <- merge(cnrm_monthly, land_mask.df, by = c("lon", "lat")) 
cnrmm_ipcc <- merge(cnrmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrmm_ipcc, "/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt")

# FGOALS ----

## Annual ----

fgoals_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

fgoals_land <- merge(fgoals_annual, land_mask.df, by = c("lon", "lat")) 
fgoals_ipcc <- merge(fgoals_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(fgoals_ipcc, "/home/crapartc/Aridity/CMIP6/fgoals.hhss_ipcc.txt")
## Monthly ---- 

fgoals_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/fgoals.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

fgoalsm_land <- merge(fgoals_monthly, land_mask.df, by = c("lon", "lat")) 
fgoalsm_ipcc <- merge(fgoalsm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(fgoalsm_ipcc, "/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt")

# INM -------

## Annual
inm_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

inm_land <- merge(inm_annual, land_mask.df, by = c("lon", "lat")) 
inm_ipcc <- merge(inm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inm_ipcc, "/home/crapartc/Aridity/CMIP6/inm.hhss_ipcc.txt")

## Monthly 

inm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/inm.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

inmm_land <- merge(inm_monthly, land_mask.df, by = c("lon", "lat")) 
inmm_ipcc <- merge(inmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inmm_ipcc, "/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt")
# MPI ---- 
## Annual ----
mpi_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

mpi_land <- merge(mpi_annual, land_mask.df, by = c("lon", "lat")) 
mpi_ipcc <- merge(mpi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpi_ipcc, "/home/crapartc/Aridity/CMIP6/mpi.hhss_ipcc.txt")

## Monthly ----

mpi_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mpi.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mpim_land <- merge(mpi_monthly, land_mask.df, by = c("lon", "lat")) 
mpim_ipcc <- merge(mpim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpim_ipcc, "/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt")

# MRI ---- 

## Annual ---- 

mri_annual <- mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.hhss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.hhss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.hhss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.hhss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.hhss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.hhss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.hhss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.hhss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.hhss.txt"), model = "SSP585", period = "2070_2100"))

mri_land <- merge(mri_annual, land_mask.df, by = c("lon", "lat")) 
mri_ipcc <- merge(mri_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mri_ipcc, "/home/crapartc/Aridity/CMIP6/mri.hhss_ipcc.txt")

## Monthly -----

mri_monthly <- mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.jan.hhss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.jan.hhss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.jan.hhss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.jan.hhss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.jan.hhss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.jan.hhss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.jan.hhss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.jan.hhss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.jan.hhss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.fev.hhss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.fev.hhss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.fev.hhss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.fev.hhss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.fev.hhss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.fev.hhss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.fev.hhss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.fev.hhss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.fev.hhss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.mar.hhss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.mar.hhss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.mar.hhss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.mar.hhss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.mar.hhss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.mar.hhss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.mar.hhss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.mar.hhss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.mar.hhss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.avr.hhss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.avr.hhss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.avr.hhss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.avr.hhss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.avr.hhss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.avr.hhss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.avr.hhss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.avr.hhss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.avr.hhss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.may.hhss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.may.hhss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.may.hhss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.may.hhss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.may.hhss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.may.hhss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.may.hhss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.may.hhss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.may.hhss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.jun.hhss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.jun.hhss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.jun.hhss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.jun.hhss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.jun.hhss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.jun.hhss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.jun.hhss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.jun.hhss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.jun.hhss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.jul.hhss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.jul.hhss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.jul.hhss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.jul.hhss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.jul.hhss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.jul.hhss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.jul.hhss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.jul.hhss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.jul.hhss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.agu.hhss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.agu.hhss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.agu.hhss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.agu.hhss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.agu.hhss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.agu.hhss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.agu.hhss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.agu.hhss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.agu.hhss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.sep.hhss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.sep.hhss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.sep.hhss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.sep.hhss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.sep.hhss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.sep.hhss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.sep.hhss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.sep.hhss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.sep.hhss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.oct.hhss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.oct.hhss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.oct.hhss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.oct.hhss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.oct.hhss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.oct.hhss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.oct.hhss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.oct.hhss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.oct.hhss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.nov.hhss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.nov.hhss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.nov.hhss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.nov.hhss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.nov.hhss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.nov.hhss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.nov.hhss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.nov.hhss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.nov.hhss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1850-1880.dec.hhss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1970-2000.dec.hhss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.hist.1985-2015.dec.hhss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2030-2060.dec.hhss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp245.2070-2100.dec.hhss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2030-2060.dec.hhss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp370.2070-2100.dec.hhss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2030-2060.dec.hhss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hhss/mri.ssp585.2070-2100.dec.hhss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mrim_land <- merge(mri_monthly, land_mask.df, by = c("lon", "lat")) 
mrim_ipcc <- merge(mrim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mrim_ipcc, "/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt")

# ALL hhss ANNUAL ----- 

all_annual <- mutate(read.table("/home/crapartc/Aridity/CMIP6/awi.hhss_ipcc.txt"), source = "AWI") %>% 
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/bcc.hhss_ipcc.txt"), source = "BCC")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/cams.hhss_ipcc.txt"), source = "CAMS")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/cesm.hhss_ipcc.txt"), source = "CESM")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/cmcc.hhss_ipcc.txt"), source = "CMCC")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/cnrm.hhss_ipcc.txt"), source = "CNRM")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/fgoals.hhss_ipcc.txt"), source = "FGOALS")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/inm.hhss_ipcc.txt"), source = "INM")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/mpi.hhss_ipcc.txt"), source = "MPI")) %>%
  rbind(mutate(read.table("/home/crapartc/Aridity/CMIP6/mri.hhss_ipcc.txt"), source = "MRI"))

write.table(filter(all_annual, lm == 1), "/home/crapartc/Aridity/hhss.all_annual.txt")

# ALL hhss MONTHLY ----

all_january <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 1), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 1), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 1), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 1), source = "MRI")) 

write.table(all_january, "/home/crapartc/Aridity/hhss.all_january.txt")

all_february <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 2), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 2), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 2), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 2), source = "MRI")) 

write.table(all_february, "/home/crapartc/Aridity/hhss.all_february.txt")

all_march <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 3), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 3), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 3), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 3), source = "MRI")) 

write.table(all_march, "/home/crapartc/Aridity/hhss.all_march.txt")

all_april <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 4), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 4), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 4), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 4), source = "MRI")) 

write.table(all_april, "/home/crapartc/Aridity/hhss.all_ahhssil.txt")

all_may <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 5), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 5), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 5), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 5), source = "MRI")) 

write.table(all_may, "/home/crapartc/Aridity/hhss.all_may.txt")

all_june <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 6), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 6), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 6), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 6), source = "MRI")) 

write.table(all_june, "/home/crapartc/Aridity/hhss.all_june.txt")

all_july <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 7), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 7), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 7), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 7), source = "MRI")) 

write.table(all_july, "/home/crapartc/Aridity/hhss.all_july.txt")

all_august <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 8), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 8), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 8), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 8), source = "MRI")) 

write.table(all_august, "/home/crapartc/Aridity/hhss.all_august.txt")

all_september <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 9), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 9), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 9), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 9), source = "MRI")) 

write.table(all_september, "/home/crapartc/Aridity/hhss.all_september.txt")

all_october <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 10), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 10), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 10), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 10), source = "MRI")) 

write.table(all_october, "/home/crapartc/Aridity/hhss.all_october.txt")

all_november <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 11), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 11), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 11), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 11), source = "MRI")) 

write.table(all_november, "/home/crapartc/Aridity/hhss.all_november.txt")

all_december <- mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/awim.hhss_ipcc.txt"), lm == 1, month == 12), source = "AWI") %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/bccm.hhss_ipcc.txt"),lm == 1, month == 12), source = "BCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/camsm.hhss_ipcc.txt"), lm == 1, month == 12), source = "CAMS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cesmm.hhss_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cmccm.hhss_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/cnrmm.hhss_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/fgoalsm.hhss_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/inmm.hhss_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mpim.hhss_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/home/crapartc/Aridity/CMIP6/mrim.hhss_ipcc.txt"), lm == 1, month == 12), source = "MRI")) 

write.table(all_december, "/home/crapartc/Aridity/hhss.all_december.txt")