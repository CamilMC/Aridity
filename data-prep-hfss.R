# AWI -----

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_185*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_186*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean ----- 
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)  %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_197*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_198*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*", full.names = T)

### annual mean ----- 

hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)  %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.hfss.txt")

### mensual mean ----- 

jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1985*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1986*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1987*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1988*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1989*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*|hfss_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.hist.1985-2015.dec.hfss.txt")
## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_203*|hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_204*|hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_207*|hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_208*|hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_209*|hfss_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_203*|hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_204*|hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_205*|hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_207*|hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_208*|hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_209*|hfss_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_203*|hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_204*|hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_205*|hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_207*|hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_208*|hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_209*|hfss_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/awi.ssp585.2070-2100.dec.hfss.txt")

# BCC -----
## historical 1850-1880 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.hfss.txt")

### mensual mean ----------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2030-2060.dec.hfss.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/bcc.ssp585.2070-2100.dec.hfss.txt")
# CAMS -----

## historical 1850-1880 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------

hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------

hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1970-2000.dec.hfss.txt")

## historical 1985-2015 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean -----
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.hfss.txt")

### mensual mean -----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_ssp245_r1i1p1f1_gn_201501-209912.nc"

### annual mean ------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_ssp245_r1i1p1f1_gn_201501-209912.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_ssp370_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2030-2060.dec.hfss.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_ssp370_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp370.2070-2100.dec.hfss.txt")
## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_ssp585_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CAMS-CSM1-0_ssp585_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cams.ssp585.2070-2100.dec.hfss.txt")

# CESM -----

## historical 1850-1880 ----
list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.hfss.txt")

### mensual mean ---------
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----------
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.hfss.txt")

### mensual mean ------
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_ssp245_r1i1p1f1_gn_201501-206412.nc"

### annual mean -----------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.hfss.txt")

### mensual mean ----------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 =======

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_ssp245_r1i1p1f1_gn_206501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(61:432)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 61, to = 421, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 62, to = 422, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 63, to = 423, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 64, to = 424, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 65, to = 425, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 66, to = 426, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 67, to = 427, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 68, to = 428, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 69, to = 429, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 70, to = 430, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 71, to = 431, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 72, to = 432, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_ssp370_r1i1p1f1_gn_201501-206412.nc"
                                    
### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2030-2060.dec.hfss.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_ssp370_r1i1p1f1_gn_206501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(61:421)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 61, to = 421, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 62, to = 422, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 63, to = 423, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 64, to = 424, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 65, to = 425, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 66, to = 426, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 67, to = 427, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 68, to = 428, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 69, to = 429, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 70, to = 430, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 71, to = 431, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 72, to = 432, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp370.2070-2100.dec.hfss.txt")
## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CESM2-WACCM_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(61:432)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 61, to = 421, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 62, to = 422, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 63, to = 423, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 64, to = 424, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 65, to = 425, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 66, to = 426, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 67, to = 427, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 68, to = 428, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 69, to = 429, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 70, to = 430, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 71, to = 431, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 72, to = 432, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cesm.ssp585.2070-2100.dec.hfss.txt")

# CMCC -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = TRUE) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = TRUE) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 =========

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean #########
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.hfss.txt")

### mensual mean #########
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ========

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.hfss.txt")

### mensual mean ----------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 =======

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CMCC-CM2-SR5_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cmcc.ssp585.2070-2100.dec.hfss.txt")

# CNRM -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"
### annual mean -----
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"
### annual mean ------
hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"

### annual mean -----
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.hfss.txt")

### mensual mean -----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.hist.1985-2015.dec.hfss.txt")
## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_ssp245_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.hfss.txt")

### mensual mean ----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_ssp245_r1i1p1f2_gr_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_ssp370_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_ssp370_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_ssp585_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_CNRM-CM6-1-HR_ssp585_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/cnrm.ssp585.2070-2100.dec.hfss.txt")

# FGOALS -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc"
### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc"
### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_ssp245_r1i1p1f1_gr_201501-210012.nc"

### annual mean -----------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.hfss.txt")

### mensual mean ----------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_ssp245_r1i1p1f1_gr_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_ssp370_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_ssp370_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_ssp585_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_FGOALS-f3-L_ssp585_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/fgoals.ssp585.2070-2100.dec.hfss.txt")


# INM -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------
list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.hfss.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.jan.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.fev.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.mar.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.avr.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.may.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.jun.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.jul.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.agu.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.sep.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.oct.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.nov.hfss.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_INM-CM4-8_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.hfss.txt")

### mensual mean ----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/inm.ssp585.2070-2100.dec.hfss.txt")
# MPI -----
## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean ---- 
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_197*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_198*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*", full.names = T)

### annual mean
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.hfss.txt")

### mensual mean
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1970-2000.dec.hfss.txt")
## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|hfss_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|hfss_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|hfss_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|hfss_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|hfss_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|hfss_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|hfss_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|hfss_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|hfss_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|hfss_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|hfss_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/hfss", pattern = "hfss_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|hfss_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|hfss_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
hfss.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mpi.ssp585.2070-2100.dec.hfss.txt")

# MRI -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1850-1880.dec.hfss.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
hfss.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.hfss.txt")

### mensual mean ---------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1970-2000.dec.hfss.txt")

## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.hist.1985-2015.dec.hfss.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.hfss.txt")

### mensual mean ----------

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2030-2060.dec.hfss.txt")

## SSP245 2070-2100----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.hfss.txt")

### mensual mean -----

jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp245.2070-2100.dec.hfss.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2030-2060.dec.hfss.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp370.2070-2100.dec.hfss.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2030-2060.dec.hfss.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/hfss/hfss_Amon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
hfss.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
hfss.df <- as.data.frame(hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.hfss.txt")

### mensual mean ----
jan.hfss.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.hfss.df <- as.data.frame(jan.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jan.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.jan.hfss.txt")

fev.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.hfss.df <- as.data.frame(fev.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(fev.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.fev.hfss.txt")

mar.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.hfss.df <- as.data.frame(mar.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(mar.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.mar.hfss.txt")

avr.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.hfss.df <- as.data.frame(avr.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(avr.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.avr.hfss.txt")

may.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.hfss.df <- as.data.frame(may.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(may.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.may.hfss.txt")

jun.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.hfss.df <- as.data.frame(jun.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jun.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.jun.hfss.txt")

jul.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.hfss.df <- as.data.frame(jul.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(jul.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.jul.hfss.txt")

agu.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.hfss.df <- as.data.frame(agu.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(agu.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.agu.hfss.txt")

sep.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.hfss.df <- as.data.frame(sep.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(sep.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.sep.hfss.txt")

oct.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.hfss.df <- as.data.frame(oct.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(oct.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.oct.hfss.txt")

nov.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.hfss.df <- as.data.frame(nov.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(nov.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.nov.hfss.txt")

dec.hfss.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.hfss.df <- as.data.frame(dec.hfss.stack, xy = T) %>% setNames(c("lon","lat","hfss"))
write.table(dec.hfss.df, file = "/bettik/crapartc/Averages/hfss/mri.ssp585.2070-2100.dec.hfss.txt")
