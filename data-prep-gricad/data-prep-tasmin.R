library(dplyr)
library(raster)

land_mask <- raster("/home/crapartc/Aridity/Masks/land_sea_mask_1degree.nc4") 

# AWI -----

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_185*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_186*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean ----- 
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)  %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1850-1880.dec.tasmin.txt")

## historical 1970-2000 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_197*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_198*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*", full.names = T)

### annual mean ----- 

tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)  %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.tasmin.txt")

### mensual mean ----- 

jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1970-2000.dec.tasmin.txt")
## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1985*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1986*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1987*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1988*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1989*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*|tasmin_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.hist.1985-2015.dec.tasmin.txt")
## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_203*|tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_204*|tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2030-2060.dec.tasmin.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_207*|tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_208*|tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_209*|tasmin_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp245.2070-2100.dec.tasmin.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_203*|tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_204*|tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_205*|tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2030-2060.dec.tasmin.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_207*|tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_208*|tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_209*|tasmin_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp370.2070-2100.dec.tasmin.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_203*|tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_204*|tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_205*|tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2030-2060.dec.tasmin.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_207*|tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_208*|tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_209*|tasmin_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/awi.ssp585.2070-2100.dec.tasmin.txt")

# BCC -----
## historical 1850-1880 -----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------
tasmin.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1850-1880.dec.tasmin.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tasmin.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.tasmin.txt")

### mensual mean ---------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1970-2000.dec.tasmin.txt")
## historical 1985-2015 -----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.hist.1985-2015.dec.tasmin.txt")

## SSP245 2030-2060 -----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.tasmin.txt")

### mensual mean ----------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2030-2060.dec.tasmin.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp245.2070-2100.dec.tasmin.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2030-2060.dec.tasmin.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp370.2070-2100.dec.tasmin.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2030-2060.dec.tasmin.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/bcc.ssp585.2070-2100.dec.tasmin.txt")
# CNRM -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"
### annual mean -----
tasmin.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1850-1880.dec.tasmin.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"
### annual mean ------
tasmin.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1970-2000.dec.tasmin.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"

### annual mean -----
tasmin.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.tasmin.txt")

### mensual mean -----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.hist.1985-2015.dec.tasmin.txt")
## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_ssp245_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----

tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.tasmin.txt")

### mensual mean ----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2030-2060.dec.tasmin.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_ssp245_r1i1p1f2_gr_201501-210012.nc"

### annual mean -----

tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp245.2070-2100.dec.tasmin.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_ssp370_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2030-2060.dec.tasmin.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_ssp370_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp370.2070-2100.dec.tasmin.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_ssp585_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2030-2060.dec.tasmin.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_CNRM-CM6-1-HR_ssp585_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/cnrm.ssp585.2070-2100.dec.tasmin.txt")

# INM -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
tasmin.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.tasmin.txt")

### mensual mean ---------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1850-1880.dec.tasmin.txt")

## historical 1970-2000 ----------
list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
tasmin.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.tasmin.txt")

### mensual mean ---------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1970-2000.dec.tasmin.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.tasmin.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.jan.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.fev.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.mar.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.avr.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.may.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.jun.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.jul.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.agu.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.sep.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.oct.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.nov.tasmin.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.hist.1985-2015.dec.tasmin.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ------

tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2030-2060.dec.tasmin.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp245.2070-2100.dec.tasmin.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2030-2060.dec.tasmin.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp370.2070-2100.dec.tasmin.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2030-2060.dec.tasmin.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_INM-CM4-8_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.tasmin.txt")

### mensual mean ----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/inm.ssp585.2070-2100.dec.tasmin.txt")
# MPI -----
## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean ---- 
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1850-1880.dec.tasmin.txt")

## historical 1970-2000 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_197*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_198*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*", full.names = T)

### annual mean
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.tasmin.txt")

### mensual mean
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1970-2000.dec.tasmin.txt")
## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|tasmin_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.hist.1985-2015.dec.tasmin.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|tasmin_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|tasmin_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2030-2060.dec.tasmin.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|tasmin_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|tasmin_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp245.2070-2100.dec.tasmin.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|tasmin_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|tasmin_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2030-2060.dec.tasmin.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|tasmin_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|tasmin_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp370.2070-2100.dec.tasmin.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|tasmin_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|tasmin_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2030-2060.dec.tasmin.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tasmin", pattern = "tasmin_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|tasmin_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|tasmin_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
tasmin.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mpi.ssp585.2070-2100.dec.tasmin.txt")

# MRI -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tasmin.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.tasmin.txt")

### mensual mean ---------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1850-1880.dec.tasmin.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tasmin.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.tasmin.txt")

### mensual mean ---------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1970-2000.dec.tasmin.txt")

## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.hist.1985-2015.dec.tasmin.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.tasmin.txt")

### mensual mean ----------

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2030-2060.dec.tasmin.txt")

## SSP245 2070-2100----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.tasmin.txt")

### mensual mean -----

jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp245.2070-2100.dec.tasmin.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2030-2060.dec.tasmin.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp370.2070-2100.dec.tasmin.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2030-2060.dec.tasmin.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tasmin/tasmin_Amon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tasmin.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tasmin.df <- as.data.frame(tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.tasmin.txt")

### mensual mean ----
jan.tasmin.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tasmin.df <- as.data.frame(jan.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jan.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.jan.tasmin.txt")

fev.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tasmin.df <- as.data.frame(fev.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(fev.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.fev.tasmin.txt")

mar.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tasmin.df <- as.data.frame(mar.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(mar.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.mar.tasmin.txt")

avr.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tasmin.df <- as.data.frame(avr.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(avr.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.avr.tasmin.txt")

may.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tasmin.df <- as.data.frame(may.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(may.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.may.tasmin.txt")

jun.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tasmin.df <- as.data.frame(jun.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jun.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.jun.tasmin.txt")

jul.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tasmin.df <- as.data.frame(jul.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(jul.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.jul.tasmin.txt")

agu.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tasmin.df <- as.data.frame(agu.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(agu.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.agu.tasmin.txt")

sep.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tasmin.df <- as.data.frame(sep.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(sep.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.sep.tasmin.txt")

oct.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tasmin.df <- as.data.frame(oct.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(oct.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.oct.tasmin.txt")

nov.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tasmin.df <- as.data.frame(nov.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(nov.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.nov.tasmin.txt")

dec.tasmin.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tasmin.df <- as.data.frame(dec.tasmin.stack, xy = T) %>% setNames(c("lon","lat","tasmin"))
write.table(dec.tasmin.df, file = "/bettik/crapartc/Averages/tasmin/mri.ssp585.2070-2100.dec.tasmin.txt")
