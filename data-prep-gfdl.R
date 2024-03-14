library(ggplot2)
library(dplyr)
library(raster)

land_mask <- raster("Aridity/Masks/land_sea_mask_1degree.nc4")

# ts ----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
ts.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.ts.txt")

### mensual mean ---------

jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1850-1880.dec.ts.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
ts.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.ts.txt")

### mensual mean ---------

jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1970-2000.dec.ts.txt")
## historical 1985-2015 =========

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean #########
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.ts.txt")

### mensual mean #########
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.jan.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.fev.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.mar.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.avr.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.may.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.jun.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.jul.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.agu.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.sep.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.oct.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.nov.ts.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.hist.1985-2015.dec.ts.txt")

## SSP245 2030-2060 ========

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----------

ts.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.ts.txt")

### mensual mean ----------

jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2030-2060.dec.ts.txt")

## SSP245 2070-2100 =======

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

ts.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.ts.txt")

### mensual mean -----

jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp245.2070-2100.dec.ts.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
ts.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.ts.txt")

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2030-2060.dec.ts.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
ts.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.ts.txt")

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp370.2070-2100.dec.ts.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
ts.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.ts.txt")

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2030-2060.dec.ts.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/ts/ts_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
ts.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.ts.txt")

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.mar.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/gfdl-esm4.ssp585.2070-2100.dec.ts.txt")


# pr ---- 

## historical 1850-1880 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"

### annual mean ----- 

pr.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.pr.txt")

### mensual mean ----- 

jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1850-1880.dec.pr.txt")

## historical 1970-2000 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"

### annual mean ----- 

pr.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.pr.txt")

### mensual mean ----- 

jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1970-2000.dec.pr.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----

pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.pr.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.jan.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.fev.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.mar.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.avr.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.may.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.jun.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.jul.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.agu.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.sep.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.oct.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.nov.pr.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.hist.1985-2015.dec.pr.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
pr.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.pr.txt")

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2030-2060.dec.pr.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
pr.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.pr.txt")

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp245.2070-2100.dec.pr.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
pr.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.pr.txt")

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2030-2060.dec.pr.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
pr.stack <- raster::stack(list.nf, bands = c()) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.pr.txt")

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp370.2070-2100.dec.pr.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
pr.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.pr.txt")

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2030-2060.dec.pr.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/pr/pr_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
pr.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.pr.txt")

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.mar.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/gfdl-esm4.ssp585.2070-2100.dec.pr.txt")

# rsds -----   

## historical 1850-1880 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"

rsds.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.rsds.txt")

### mensual mean
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1850-1880.dec.rsds.txt")

## historical 1970-2000 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"

rsds.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.rsds.txt")

### mensual mean
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1970-2000.dec.rsds.txt")

## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----

rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.rsds.txt")

### mensual mean ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.jan.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.fev.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.mar.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.avr.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.may.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.jun.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.jul.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.agu.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.sep.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.oct.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.nov.rsds.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.hist.1985-2015.dec.rsds.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
rsds.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.rsds.txt")

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2030-2060.dec.rsds.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
rsds.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.rsds.txt")

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp245.2070-2100.dec.rsds.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
rsds.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.rsds.txt")

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2030-2060.dec.rsds.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
rsds.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.rsds.txt")

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp370.2070-2100.dec.rsds.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
rsds.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.rsds.txt")

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2030-2060.dec.rsds.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/rsds/rsds_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
rsds.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.rsds.txt")

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.mar.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.avr.rsds.txt")

may.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.may.rsds.txt")

jun.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.jun.rsds.txt")

jul.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.jul.rsds.txt")

agu.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.agu.rsds.txt")

sep.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.sep.rsds.txt")

oct.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.oct.rsds.txt")

nov.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.nov.rsds.txt")

dec.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/gfdl-esm4.ssp585.2070-2100.dec.rsds.txt")

# Wind -----   

## historical 1850-1880 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"

### annual mean
sfcWind.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.sfcWind.txt")

### mensual mean
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1850-1880.dec.sfcWind.txt")

## historical 1970-2000 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"

### annual mean
sfcWind.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.sfcWind.txt")

### mensual mean
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1970-2000.dec.sfcWind.txt")

## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.sfcWind.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.jan.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.fev.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.mar.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.avr.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.may.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.jun.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.jul.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.agu.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.sep.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.oct.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.nov.sfcWind.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.hist.1985-2015.dec.sfcWind.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
sfcWind.stack <- raster::stack(list.nf, bands = c(181:529)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.sfcWind.txt")

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2030-2060.dec.sfcWind.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
sfcWind.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.sfcWind.txt")

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp245.2070-2100.dec.sfcWind.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
sfcWind.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.sfcWind.txt")

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2030-2060.dec.sfcWind.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
sfcWind.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.sfcWind.txt")

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp370.2070-2100.dec.sfcWind.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
sfcWind.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.sfcWind.txt")

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2030-2060.dec.sfcWind.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/sfcWind/sfcWind_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
sfcWind.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.sfcWind.txt")

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.mar.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/gfdl-esm4.ssp585.2070-2100.dec.sfcWind.txt")

# tas ----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"


### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1970-2000.dec.tas.txt")


## historical 1985-2015 =========

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean #########
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.tas.txt")

### mensual mean #########
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.jan.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.fev.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.mar.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.avr.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.may.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.jun.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.jul.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.agu.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.sep.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.oct.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.nov.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ========

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.tas.txt")

### mensual mean ----------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 =======

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/gfdl-esm4.ssp585.2070-2100.dec.tas.txt")


# hfls -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
hfls.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.hfls.txt")

### mensual mean ---------

jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1850-1880.dec.hfls.txt")

## historical 1970-2000 ----------
list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
hfls.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.hfls.txt")

### mensual mean ---------

jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1970-2000.dec.hfls.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.hfls.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.jan.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.fev.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.mar.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.avr.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.may.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.jun.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.jul.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.agu.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.sep.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.oct.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.nov.hfls.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.hfls.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.hist.1985-2015.dec.hfls.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ------

hfls.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.hfls.txt")

### mensual mean -----

jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2030-2060.dec.hfls.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

hfls.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.hfls.txt")

### mensual mean -----

jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp245.2070-2100.dec.hfls.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfls.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.hfls.txt")

### mensual mean ----
jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2030-2060.dec.hfls.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfls.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.hfls.txt")

### mensual mean ----
jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp370.2070-2100.dec.hfls.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfls.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.hfls.txt")

### mensual mean ----
jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2030-2060.dec.hfls.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfls/hfls_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfls.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfls.df <- as.data.frame(hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.hfls.txt")

### mensual mean ----

jan.hfls.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfls.df <- as.data.frame(jan.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jan.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.jan.hfls.txt")

fev.hfls.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfls.df <- as.data.frame(fev.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(fev.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.fev.hfls.txt")

mar.hfls.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfls.df <- as.data.frame(mar.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(mar.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.mar.hfls.txt")

avr.hfls.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfls.df <- as.data.frame(avr.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(avr.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.avr.hfls.txt")

may.hfls.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfls.df <- as.data.frame(may.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(may.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.may.hfls.txt")

jun.hfls.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfls.df <- as.data.frame(jun.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jun.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.jun.hfls.txt")

jul.hfls.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfls.df <- as.data.frame(jul.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(jul.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.jul.hfls.txt")

agu.hfls.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfls.df <- as.data.frame(agu.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(agu.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.agu.hfls.txt")

sep.hfls.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfls.df <- as.data.frame(sep.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(sep.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.sep.hfls.txt")

oct.hfls.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfls.df <- as.data.frame(oct.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(oct.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.oct.hfls.txt")

nov.hfls.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfls.df <- as.data.frame(nov.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(nov.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.nov.hfls.txt")

dec.hfls.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfls.df <- as.data.frame(dec.hfls.stack, xy = T) %>% setNames(c("lon","lat","hfls"))
write.table(dec.hfls.df, file = "/bettik/crapartc/Averages/hfls/gfdl-esm4.ssp585.2070-2100.dec.hfls.txt")

# hfss -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------
list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.hfss.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.jan.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.fev.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.mar.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.avr.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.may.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.jun.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.jul.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.agu.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.sep.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.oct.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.nov.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.hfss.txt")

### mensual mean ----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/gfdl-esm4.ssp585.2070-2100.dec.hfss.txt")

# hurs -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
hurs.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.hurs.txt")

### mensual mean ---------

jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1850-1880.dec.hurs.txt")

## historical 1970-2000 ----------
list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
hurs.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.hurs.txt")

### mensual mean ---------

jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1970-2000.dec.hurs.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.hurs.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.jan.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.fev.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.mar.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.avr.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.may.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.jun.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.jul.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.agu.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.sep.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.oct.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.nov.hurs.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.hurs.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.hist.1985-2015.dec.hurs.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ------

hurs.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.hurs.txt")

### mensual mean -----

jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2030-2060.dec.hurs.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

hurs.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.hurs.txt")

### mensual mean -----

jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp245.2070-2100.dec.hurs.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hurs.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.hurs.txt")

### mensual mean ----
jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2030-2060.dec.hurs.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hurs.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.hurs.txt")

### mensual mean ----
jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp370.2070-2100.dec.hurs.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hurs.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.hurs.txt")

### mensual mean ----
jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2030-2060.dec.hurs.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hurs/hurs_Amon_GFDL-ESM4_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hurs.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hurs.df <- as.data.frame(hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.hurs.txt")

### mensual mean ----

jan.hurs.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hurs.df <- as.data.frame(jan.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jan.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.jan.hurs.txt")

fev.hurs.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hurs.df <- as.data.frame(fev.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(fev.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.fev.hurs.txt")

mar.hurs.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hurs.df <- as.data.frame(mar.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(mar.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.mar.hurs.txt")

avr.hurs.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hurs.df <- as.data.frame(avr.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(avr.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.avr.hurs.txt")

may.hurs.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hurs.df <- as.data.frame(may.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(may.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.may.hurs.txt")

jun.hurs.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hurs.df <- as.data.frame(jun.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jun.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.jun.hurs.txt")

jul.hurs.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hurs.df <- as.data.frame(jul.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(jul.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.jul.hurs.txt")

agu.hurs.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hurs.df <- as.data.frame(agu.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(agu.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.agu.hurs.txt")

sep.hurs.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hurs.df <- as.data.frame(sep.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(sep.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.sep.hurs.txt")

oct.hurs.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hurs.df <- as.data.frame(oct.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(oct.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.oct.hurs.txt")

nov.hurs.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hurs.df <- as.data.frame(nov.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(nov.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.nov.hurs.txt")

dec.hurs.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hurs.df <- as.data.frame(dec.hurs.stack, xy = T) %>% setNames(c("lon","lat","hurs"))
write.table(dec.hurs.df, file = "/bettik/crapartc/Averages/hurs/gfdl-esm4.ssp585.2070-2100.dec.hurs.txt")
