# Libraries ---- 

library(raster)
library(dplyr)
library(stringr)


# Masks ---- 
cmcc <- raster("/bettik/crapartc/CMIP6/pr/pr_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc")
crs(cmcc) <- "EPSG:4326"

land_mask <- raster("Aridity/Masks/land_sea_mask_1degree.nc4") 
extent(land_mask) <- extent(cmcc)
land_mask <-  projectRaster(from = land_mask, to = cmcc)
land_mask.df <- as.data.frame(land_mask, xy = T) %>% setNames(c("lon","lat","lm")) # 0 if ocean, 1 if land

ipcc_regions <- shapefile("Aridity/Masks/IPCC-WGI-reference-regions-v4.shp") %>% spTransform(crs("EPSG:4326")) 
ipcc_regions.raster <- ipcc_regions %>% rasterize(cmcc)
ipcc_regions.df <- as.data.frame(ipcc_regions.raster, xy = T) %>% setNames(c("lon","lat","Continent","Type","Name","Acronym"))



# AWI ---- 

## Annual ---- 

awi_annual <- rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880"), mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

awi_land <- merge(awi_annual, land_mask.df, by = c("lon", "lat")) 
awi_ipcc <- merge(awi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(awi_ipcc, "Aridity/CMIP6/awi.pr_ipcc.txt")


## Monthly ---- 

awi_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/awi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

awim_land <- merge(awi_monthly, land_mask.df, by = c("lon", "lat")) 
awim_ipcc <- merge(awim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(awim_ipcc, "Aridity/CMIP6/awim.pr_ipcc.txt")

# BCC  ---- 

## Annual ---- 

bcc_annual <- rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880"), mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

bcc_land <- merge(bcc_annual, land_mask.df, by = c("lon", "lat")) 
bcc_ipcc <- merge(bcc_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(filter(bcc_ipcc, lm == 1), "Aridity/CMIP6/bcc.pr_ipcc.txt")

## Monthly ----

bcc_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/bcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

bccm_land <- merge(bcc_monthly, land_mask.df, by = c("lon", "lat")) 
bccm_ipcc <- merge(bccm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(bccm_ipcc, "Aridity/CMIP6/bccm.pr_ipcc.txt")

# CAMS ---- 

## Annual ----

cams_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

cams_land <- merge(cams_annual, land_mask.df, by = c("lon", "lat")) 
cams_ipcc <- merge(cams_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cams_ipcc, "Aridity/CMIP6/cams.pr_ipcc.txt")

## Monthly ----

cams_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cams.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

camsm_land <- merge(cams_monthly, land_mask.df, by = c("lon", "lat")) 
camsm_ipcc <- merge(camsm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(camsm_ipcc, "Aridity/CMIP6/camsm.pr_ipcc.txt")


# CESM ----

## Annual ----

cesm_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

cesm_land <- merge(cesm_annual, land_mask.df, by = c("lon", "lat")) 
cesm_ipcc <- merge(cesm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cesm_ipcc, "Aridity/CMIP6/cesm.pr_ipcc.txt")

## Monthly ----

cesm_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cesm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cesmm_land <- merge(cesm_monthly, land_mask.df, by = c("lon", "lat")) 
cesmm_ipcc <- merge(cesmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cesmm_ipcc, "Aridity/CMIP6/cesmm.pr_ipcc.txt")

# CMCC ----

## Annual -----

cmcc_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

cmcc_land <- merge(cmcc_annual, land_mask.df, by = c("lon", "lat")) 
cmcc_ipcc <- merge(cmcc_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmcc_ipcc, "Aridity/CMIP6/cmcc.pr_ipcc.txt")

## Monthly ---- 

cmcc_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cmcc.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cmccm_land <- merge(cmcc_monthly, land_mask.df, by = c("lon", "lat")) 
cmccm_ipcc <- merge(cmccm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cmccm_ipcc, "Aridity/CMIP6/cmccm.pr_ipcc.txt")

# CNRM ---- 

## Annual ---- 

cnrm_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

cnrm_land <- merge(cnrm_annual, land_mask.df, by = c("lon", "lat")) 
cnrm_ipcc <- merge(cnrm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrm_ipcc, "Aridity/CMIP6/cnrm.pr_ipcc.txt")

## Monthly -----

cnrm_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>% 
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/cnrm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

cnrmm_land <- merge(cnrm_monthly, land_mask.df, by = c("lon", "lat")) 
cnrmm_ipcc <- merge(cnrmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(cnrmm_ipcc, "Aridity/CMIP6/cnrmm.pr_ipcc.txt")

# FGOALS ----

## Annual ----

fgoals_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

fgoals_land <- merge(fgoals_annual, land_mask.df, by = c("lon", "lat")) 
fgoals_ipcc <- merge(fgoals_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(fgoals_ipcc, "Aridity/CMIP6/fgoals.pr_ipcc.txt")


## Monthly ---- 

fgoals_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/fgoals.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

fgoalsm_land <- merge(fgoals_monthly, land_mask.df, by = c("lon", "lat")) 
fgoalsm_ipcc <- merge(fgoalsm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(fgoalsm_ipcc, "Aridity/CMIP6/fgoalsm.pr_ipcc.txt")

# INM

## Annual
inm_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

inm_land <- merge(inm_annual, land_mask.df, by = c("lon", "lat")) 
inm_ipcc <- merge(inm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inm_ipcc, "Aridity/CMIP6/inm.pr_ipcc.txt")

## Monthly 

inm_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/inm.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

inmm_land <- merge(inm_monthly, land_mask.df, by = c("lon", "lat")) 
inmm_ipcc <- merge(inmm_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(inmm_ipcc, "Aridity/CMIP6/inmm.pr_ipcc.txt")


# MPI ---- 

## Annual ----

mpi_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

mpi_land <- merge(mpi_annual, land_mask.df, by = c("lon", "lat")) 
mpi_ipcc <- merge(mpi_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpi_ipcc, "Aridity/CMIP6/mpi.pr_ipcc.txt")

## Monthly ----

mpi_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mpim_land <- merge(mpi_monthly, land_mask.df, by = c("lon", "lat")) 
mpim_ipcc <- merge(mpim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mpim_ipcc, "Aridity/CMIP6/mpim.pr_ipcc.txt")

# MRI ---- 

## Annual ---- 

mri_annual <- mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.pr.txt"), model = "historical", period = "1850_1880") %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.pr.txt"), model = "historical", period = "1970_2000")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.pr.txt"), model = "historical", period = "1985_2015")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.pr.txt"), model = "SSP245", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.pr.txt"), model = "SSP245", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.pr.txt"), model = "SSP370", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.pr.txt"), model = "SSP370", period = "2070_2100")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.pr.txt"), model = "SSP585", period = "2030_2060")) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.pr.txt"), model = "SSP585", period = "2070_2100"))

mri_land <- merge(mri_annual, land_mask.df, by = c("lon", "lat")) 
mri_ipcc <- merge(mri_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mri_ipcc, "Aridity/CMIP6/mri.pr_ipcc.txt")

## Monthly -----

mri_monthly <- mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.jan.pr.txt"), model = "historical", period = "1850_1880", month = 1) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.jan.pr.txt"), model = "historical", period = "1970_2000", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.jan.pr.txt"), model = "historical", period = "1985_2015", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.jan.pr.txt"), model = "SSP245", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.jan.pr.txt"), model = "SSP245", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.jan.pr.txt"), model = "SSP370", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.jan.pr.txt"), model = "SSP370", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.jan.pr.txt"), model = "SSP585", period = "2030_2060", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.jan.pr.txt"), model = "SSP585", period = "2070_2100", month = 1)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.fev.pr.txt"), model = "historical", period = "1850_1880", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.fev.pr.txt"), model = "historical", period = "1970_2000", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.fev.pr.txt"), model = "historical", period = "1985_2015", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.fev.pr.txt"), model = "SSP245", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.fev.pr.txt"), model = "SSP245", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.fev.pr.txt"), model = "SSP370", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.fev.pr.txt"), model = "SSP370", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.fev.pr.txt"), model = "SSP585", period = "2030_2060", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.fev.pr.txt"), model = "SSP585", period = "2070_2100", month = 2)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 3)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 4)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 5)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 6)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 7)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 8)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 9)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 10)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 11)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1850-1880.mar.pr.txt"), model = "historical", period = "1850_1880", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1970-2000.mar.pr.txt"), model = "historical", period = "1970_2000", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.hist.1985-2015.mar.pr.txt"), model = "historical", period = "1985_2015", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2030-2060.mar.pr.txt"), model = "SSP245", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp245.2070-2100.mar.pr.txt"), model = "SSP245", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2030-2060.mar.pr.txt"), model = "SSP370", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp370.2070-2100.mar.pr.txt"), model = "SSP370", period = "2070_2100", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2030-2060.mar.pr.txt"), model = "SSP585", period = "2030_2060", month = 12)) %>%
  rbind(mutate(read.table("/bettik/crapartc/Averages/pr/mri.ssp585.2070-2100.mar.pr.txt"), model = "SSP585", period = "2070_2100", month = 12)) 

mrim_land <- merge(mri_monthly, land_mask.df, by = c("lon", "lat")) 
mrim_ipcc <- merge(mrim_land, ipcc_regions.df, by = c("lon", "lat"))

write.table(mrim_ipcc, "Aridity/CMIP6/mrim.pr_ipcc.txt")

# ALL pr ANNUAL ----- 

all_annual <- rbind(mutate(read.table("Aridity/CMIP6/awi.pr_ipcc.txt"), source = "AWI"),mutate(read.table("Aridity/CMIP6/bcc.pr_ipcc.txt"), source = "BCC")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cams.pr_ipcc.txt"), source = "CAMS")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cesm.pr_ipcc.txt"), source = "CESM")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cmcc.pr_ipcc.txt"), source = "CMCC")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cnrm.pr_ipcc.txt"), source = "CNRM")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/fgoals.pr_ipcc.txt"), source = "FGOALS")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/inm.pr_ipcc.txt"), source = "INM")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/mpi.pr_ipcc.txt"), source = "MPI")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/mri.pr_ipcc.txt"), source = "MRI"))

write.table(filter(all_annual, lm == 1), "Aridity/pr.all_annual.txt")

# ALL pr MONTHLY ----

all_monthly <- mutate(read.table("Aridity/CMIP6/awi.pr_ipcc.txt"), source = "AWI") %>%
  rbind(mutate(read.table("Aridity/CMIP6/bcc.pr_ipcc.txt"), source = "BCC")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cams.pr_ipcc.txt"), source = "CAMS")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cesm.pr_ipcc.txt"), source = "CESM")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cmcc.pr_ipcc.txt"), source = "CMCC")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/cnrm.pr_ipcc.txt"), source = "CNRM")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/fgoals.pr_ipcc.txt"), source = "FGOALS")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/inm.pr_ipcc.txt"), source = "INM")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/mpi.pr_ipcc.txt"), source = "MPI")) %>%
  rbind(mutate(read.table("Aridity/CMIP6/mri.pr_ipcc.txt"), source = "MRI")) %>%
  filter(lm == 1)

write.table(all_monthly, "Aridity/pr.all_monthly.txt")
