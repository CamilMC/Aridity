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
# CAS-ESM-2 ----
## Annual ----

cas.esm2_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

cas.esm2_land <- merge(cas.esm2_annual, land_mask.df, by = c("lon", "lat")) 
cas.esm2_ipcc <- merge(cas.esm2_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cas.esm2_ipcc, "/bettik/crapartc/IPCC/cas.esm2.hfss_ipcc.txt")

## Monthly ----

cas.esm2_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cas.esm2.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cas.esm2m_land <- merge(cas.esm2_monthly, land_mask.df, by = c("lon", "lat")) 
cas.esm2m_ipcc <- merge(cas.esm2m_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cas.esm2m_ipcc, "/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt")

# CESM ----

## Annual ----

cesm_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

cesm_land <- merge(cesm_annual, land_mask.df, by = c("lon", "lat")) 
cesm_ipcc <- merge(cesm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cesm_ipcc, "/bettik/crapartc/IPCC/cesm.hfss_ipcc.txt")

## Monthly ----

cesm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cesmm_land <- merge(cesm_monthly, land_mask.df, by = c("lon", "lat")) 
cesmm_ipcc <- merge(cesmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cesmm_ipcc, "/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt")

# CMCC-CM2-SR5 ----

## Annual -----

cmcc_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

cmcc_land <- merge(cmcc_annual, land_mask.df, by = c("lon", "lat")) 
cmcc_ipcc <- merge(cmcc_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmcc_ipcc, "/bettik/crapartc/IPCC/cmcc.hfss_ipcc.txt")

## Monthly ---- 

cmcc_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cmccm_land <- merge(cmcc_monthly, land_mask.df, by = c("lon", "lat")) 
cmccm_ipcc <- merge(cmccm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmccm_ipcc, "/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt")

# CMCC-ESM-2 ----

## Annual -----

cmcc.esm2_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

cmcc.esm2_land <- merge(cmcc.esm2_annual, land_mask.df, by = c("lon", "lat")) 
cmcc.esm2_ipcc <- merge(cmcc.esm2_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmcc.esm2_ipcc, "/bettik/crapartc/IPCC/cmcc.esm2.hfss_ipcc.txt")

## Monthly ---- 

cmcc.esm2_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cmcc.esm2.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cmcc.esm2m_land <- merge(cmcc.esm2_monthly, land_mask.df, by = c("lon", "lat")) 
cmcc.esm2m_ipcc <- merge(cmcc.esm2m_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmcc.esm2m_ipcc, "/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt")

# CNRM ---- 

## Annual ---- 

cnrm_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

cnrm_land <- merge(cnrm_annual, land_mask.df, by = c("lon", "lat")) 
cnrm_ipcc <- merge(cnrm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrm_ipcc, "/bettik/crapartc/IPCC/cnrm.hfss_ipcc.txt")

## Monthly -----

cnrm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cnrmm_land <- merge(cnrm_monthly, land_mask.df, by = c("lon", "lat")) 
cnrmm_ipcc <- merge(cnrmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrmm_ipcc, "/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt")


# EC-Earth3 ---- 

## Annual ---- 

ec.earth3_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

ec.earth3_land <- merge(ec.earth3_annual, land_mask.df, by = c("lon", "lat")) 
ec.earth3_ipcc <- merge(ec.earth3_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(ec.earth3_ipcc, "/bettik/crapartc/IPCC/ec.earth3.hfss_ipcc.txt")

## Monthly -----

ec.earth3_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/ec-earth3.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

ec.earth3m_land <- merge(ec.earth3_monthly, land_mask.df, by = c("lon", "lat")) 
ec.earth3m_ipcc <- merge(ec.earth3m_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(ec.earth3m_ipcc, "/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt")

# FGOALS ----

## Annual ----

fgoals_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

fgoals_land <- merge(fgoals_annual, land_mask.df, by = c("lon", "lat")) 
fgoals_ipcc <- merge(fgoals_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(fgoals_ipcc, "/bettik/crapartc/IPCC/fgoals.hfss_ipcc.txt")
## Monthly ---- 

fgoals_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

fgoalsm_land <- merge(fgoals_monthly, land_mask.df, by = c("lon", "lat")) 
fgoalsm_ipcc <- merge(fgoalsm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(fgoalsm_ipcc, "/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt")


# GFDL-ESM4 ----

## Annual ----

gfdl.esm4_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

gfdl.esm4_land <- merge(gfdl.esm4_annual, land_mask.df, by = c("lon", "lat")) 
gfdl.esm4_ipcc <- merge(gfdl.esm4_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(gfdl.esm4_ipcc, "/bettik/crapartc/IPCC/gfdl.esm4.hfss_ipcc.txt")
## Monthly ---- 

gfdl.esm4_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

gfdl.esm4m_land <- merge(gfdl.esm4_monthly, land_mask.df, by = c("lon", "lat")) 
gfdl.esm4m_ipcc <- merge(gfdl.esm4m_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(gfdl.esm4m_ipcc, "/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt")


# INM-CM4-8 -------

## Annual
inm_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

inm_land <- merge(inm_annual, land_mask.df, by = c("lon", "lat")) 
inm_ipcc <- merge(inm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inm_ipcc, "/bettik/crapartc/IPCC/inm.hfss_ipcc.txt")

## Monthly 

inm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

inmm_land <- merge(inm_monthly, land_mask.df, by = c("lon", "lat")) 
inmm_ipcc <- merge(inmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inmm_ipcc, "/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt")

# INM-CM5-0 -------

## Annual
inm.cm5_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

inm.cm5_land <- merge(inm.cm5_annual, land_mask.df, by = c("lon", "lat")) 
inm.cm5_ipcc <- merge(inm.cm5_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inm.cm5_ipcc, "/bettik/crapartc/IPCC/inm.cm5.hfss_ipcc.txt")

## Monthly 

inm.cm5_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/inm.cm5.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

inm.cm5m_land <- merge(inm.cm5_monthly, land_mask.df, by = c("lon", "lat")) 
inm.cm5m_ipcc <- merge(inm.cm5m_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inm.cm5m_ipcc, "/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt")


# MPI-ESM1-2-HR ---- 
## Annual ----
mpi_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

mpi_land <- merge(mpi_annual, land_mask.df, by = c("lon", "lat")) 
mpi_ipcc <- merge(mpi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpi_ipcc, "/bettik/crapartc/IPCC/mpi.hfss_ipcc.txt")

## Monthly ----

mpi_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mpim_land <- merge(mpi_monthly, land_mask.df, by = c("lon", "lat")) 
mpim_ipcc <- merge(mpim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpim_ipcc, "/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt")

# MRI-ESM2-0 ---- 

## Annual ---- 

mri_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

mri_land <- merge(mri_annual, land_mask.df, by = c("lon", "lat")) 
mri_ipcc <- merge(mri_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mri_ipcc, "/bettik/crapartc/IPCC/mri.hfss_ipcc.txt")

## Monthly -----

mri_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mrim_land <- merge(mri_monthly, land_mask.df, by = c("lon", "lat")) 
mrim_ipcc <- merge(mrim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mrim_ipcc, "/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt")


# NorESM-2-MM ---- 

## Annual ---- 

noresm_annual <- mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.hfss.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.hfss.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.hfss.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.hfss.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.hfss.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.hfss.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.hfss.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.hfss.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.hfss.txt"), model = "SSP585", period = "2070_2100"))

noresm_land <- merge(noresm_annual, land_mask.df, by = c("lon", "lat")) 
noresm_ipcc <- merge(noresm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(noresm_ipcc, "/bettik/crapartc/IPCC/noresm.hfss_ipcc.txt")

## Monthly -----

noresm_monthly <- mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.jan.hfss.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.jan.hfss.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.jan.hfss.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.jan.hfss.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.jan.hfss.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.jan.hfss.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.jan.hfss.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.jan.hfss.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.jan.hfss.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.fev.hfss.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.fev.hfss.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.fev.hfss.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.fev.hfss.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.fev.hfss.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.fev.hfss.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.fev.hfss.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.fev.hfss.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.fev.hfss.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.mar.hfss.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.mar.hfss.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.mar.hfss.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.mar.hfss.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.mar.hfss.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.mar.hfss.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.mar.hfss.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.mar.hfss.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.mar.hfss.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.avr.hfss.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.avr.hfss.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.avr.hfss.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.avr.hfss.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.avr.hfss.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.avr.hfss.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.avr.hfss.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.avr.hfss.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.avr.hfss.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.may.hfss.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.may.hfss.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.may.hfss.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.may.hfss.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.may.hfss.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.may.hfss.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.may.hfss.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.may.hfss.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.may.hfss.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.jun.hfss.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.jun.hfss.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.jun.hfss.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.jun.hfss.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.jun.hfss.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.jun.hfss.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.jun.hfss.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.jun.hfss.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.jun.hfss.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.jul.hfss.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.jul.hfss.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.jul.hfss.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.jul.hfss.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.jul.hfss.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.jul.hfss.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.jul.hfss.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.jul.hfss.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.jul.hfss.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.agu.hfss.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.agu.hfss.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.agu.hfss.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.agu.hfss.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.agu.hfss.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.agu.hfss.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.agu.hfss.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.agu.hfss.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.agu.hfss.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.sep.hfss.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.sep.hfss.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.sep.hfss.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.sep.hfss.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.sep.hfss.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.sep.hfss.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.sep.hfss.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.sep.hfss.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.sep.hfss.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.oct.hfss.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.oct.hfss.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.oct.hfss.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.oct.hfss.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.oct.hfss.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.oct.hfss.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.oct.hfss.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.oct.hfss.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.oct.hfss.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.nov.hfss.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.nov.hfss.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.nov.hfss.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.nov.hfss.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.nov.hfss.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.nov.hfss.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.nov.hfss.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.nov.hfss.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.nov.hfss.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1850-1880.dec.hfss.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1970-2000.dec.hfss.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.hist.1985-2015.dec.hfss.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2030-2060.dec.hfss.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp245.2070-2100.dec.hfss.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2030-2060.dec.hfss.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp370.2070-2100.dec.hfss.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2030-2060.dec.hfss.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/hfss/noresm.ssp585.2070-2100.dec.hfss.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

noresmm_land <- merge(noresm_monthly, land_mask.df, by = c("lon", "lat")) 
noresmm_ipcc <- merge(noresmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(noresmm_ipcc, "/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt")


# ALL hfss ANNUAL ----- 

all_annual <- mutate(read.table("/bettik/crapartc/IPCC/cas.esm2.hfss_ipcc.txt"), source = "CAS-ESM2") %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/cesm.hfss_ipcc.txt"), source = "CESM")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/cmcc.hfss_ipcc.txt"), source = "CMCC")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/cmcc.esm2.hfss_ipcc.txt"), source = "CMCC-ESM2")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/cnrm.hfss_ipcc.txt"), source = "CNRM")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), source = "EC-Earth3")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/fgoals.hfss_ipcc.txt"), source = "FGOALS")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/gfdl.esm4.hfss_ipcc.txt"), source = "GFDL-ESM4")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/inm.hfss_ipcc.txt"), source = "INM")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/inm.cm5.hfss_ipcc.txt"), source = "INM-CM5")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/mpi.hfss_ipcc.txt"), source = "MPI")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/mri.hfss_ipcc.txt"), source = "MRI")) %>%
  rbind(mutate(read.table("/bettik/crapartc/IPCC/noresm.hfss_ipcc.txt"), source = "NorESM-2-MM"))

write.table(filter(all_annual, lm == 1), "/bettik/crapartc/All_annual/hfss.all_annual.txt")

# ALL hfss MONTHLY ----

all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 1), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 1), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 1), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 1), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 1), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 1), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 1), source = "NorESM-2-MM")) 

write.table(all_january, "/bettik/crapartc/All_mensual/hfss.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 2), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 2), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 2), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 2), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 2), source = "NorESM-2-MM"))

write.table(all_february, "/bettik/crapartc/All_mensual/hfss.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 3), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 3), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 3), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 3), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 3), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 3), source = "NorESM-2-MM"))

write.table(all_march, "/bettik/crapartc/All_mensual/hfss.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 4), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 4), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 4), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 4), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 4), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 4), source = "NorESM-2-MM"))

write.table(all_april, "/bettik/crapartc/All_mensual/hfss.all_april.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 5), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 5), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 5), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 5), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 5), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 5), source = "NorESM-2-MM"))

write.table(all_may, "/bettik/crapartc/All_mensual/hfss.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 6), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 6), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 6), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 6), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 6), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 6), source = "NorESM-2-MM"))

write.table(all_june, "/bettik/crapartc/All_mensual/hfss.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 7), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 7), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 7), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 7), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 7), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 7), source = "NorESM-2-MM"))

write.table(all_july, "/bettik/crapartc/All_mensual/hfss.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 8), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 8), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 8), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 8), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 8), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 8), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 8), source = "NorESM-2-MM"))

write.table(all_august, "/bettik/crapartc/All_mensual/hfss.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 9), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 9), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 9), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 9), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 9), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 9), source = "NorESM-2-MM"))

write.table(all_september, "/bettik/crapartc/All_mensual/hfss.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 10), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 10), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 10), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 10), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 10), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 10), source = "NorESM-2-MM"))

write.table(all_october, "/bettik/crapartc/All_mensual/hfss.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 11), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 11), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 11), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 11), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 11), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 11), source = "NorESM-2-MM"))

write.table(all_november, "/bettik/crapartc/All_mensual/hfss.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfss_ipcc.txt"), lm == 1, month == 12), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfss_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfss_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfss_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfss_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfss_ipcc.txt"), lm == 1, month == 12), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfss_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfss_ipcc.txt"), lm == 1, month == 12), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfss_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfss_ipcc.txt"), lm == 1, month == 12), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfss_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfss_ipcc.txt"), lm == 1, month == 12), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfss_ipcc.txt"), lm == 1, month == 12), source = "NorESM-2-MM"))

write.table(all_december, "/bettik/crapartc/All_mensual/hfss.all_december.txt")