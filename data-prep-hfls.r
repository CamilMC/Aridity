# AWI -----

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_185*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_186*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean ----- 
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)  %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_197*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_198*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*", full.names = T)

### annual mean ----- 

tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)  %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.tas.txt")

### mensual mean ----- 

jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1985*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1986*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1987*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1988*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1989*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*|tas_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.hist.1985-2015.dec.tas.txt")
## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_203*|tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_204*|tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_207*|tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_208*|tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_209*|tas_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_203*|tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_204*|tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_205*|tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_207*|tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_208*|tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_209*|tas_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_203*|tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_204*|tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_205*|tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_207*|tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_208*|tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_209*|tas_Amon_AWI-CM-1-1-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/awi.ssp585.2070-2100.dec.tas.txt")

# BCC -----
## historical 1850-1880 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.tas.txt")

### mensual mean ----------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2030-2060.dec.tas.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/bcc.ssp585.2070-2100.dec.tas.txt")
# CAMS -----

## historical 1850-1880 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------

tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ------

tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1970-2000.dec.tas.txt")

## historical 1985-2015 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean -----
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.tas.txt")

### mensual mean -----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_ssp245_r1i1p1f1_gn_201501-209912.nc"

### annual mean ------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_ssp245_r1i1p1f1_gn_201501-209912.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_ssp370_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2030-2060.dec.tas.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_ssp370_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp370.2070-2100.dec.tas.txt")
## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_ssp585_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CAMS-CSM1-0_ssp585_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cams.ssp585.2070-2100.dec.tas.txt")

# CESM -----

## historical 1850-1880 ----
list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.tas.txt")

### mensual mean ---------
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----------
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.tas.txt")

### mensual mean ------
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_ssp245_r1i1p1f1_gn_201501-206412.nc"

### annual mean -----------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.tas.txt")

### mensual mean ----------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 =======

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_ssp245_r1i1p1f1_gn_206501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(61:432)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 61, to = 421, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 62, to = 422, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 63, to = 423, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 64, to = 424, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 65, to = 425, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 66, to = 426, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 67, to = 427, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 68, to = 428, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 69, to = 429, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 70, to = 430, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 71, to = 431, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 72, to = 432, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_ssp370_r1i1p1f1_gn_201501-206412.nc"
                                    
### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2030-2060.dec.tas.txt")
## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_ssp370_r1i1p1f1_gn_206501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(61:421)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 61, to = 421, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 62, to = 422, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 63, to = 423, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 64, to = 424, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 65, to = 425, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 66, to = 426, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 67, to = 427, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 68, to = 428, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 69, to = 429, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 70, to = 430, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 71, to = 431, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 72, to = 432, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp370.2070-2100.dec.tas.txt")
## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CESM2-WACCM_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(61:432)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 61, to = 421, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 62, to = 422, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 63, to = 423, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 64, to = 424, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 65, to = 425, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 66, to = 426, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 67, to = 427, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 68, to = 428, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 69, to = 429, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 70, to = 430, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 71, to = 431, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 72, to = 432, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cesm.ssp585.2070-2100.dec.tas.txt")

# CMCC -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = TRUE) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = TRUE) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 =========

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean #########
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.tas.txt")

### mensual mean #########
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ========

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.tas.txt")

### mensual mean ----------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 =======

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CMCC-CM2-SR5_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cmcc.ssp585.2070-2100.dec.tas.txt")

# CNRM -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"
### annual mean -----
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"
### annual mean ------
tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_historical_r1i1p1f2_gr_185001-201412.nc"

### annual mean -----
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.tas.txt")

### mensual mean -----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.hist.1985-2015.dec.tas.txt")
## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_ssp245_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.tas.txt")

### mensual mean ----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_ssp245_r1i1p1f2_gr_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_ssp370_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_ssp370_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_ssp585_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_CNRM-CM6-1-HR_ssp585_r1i1p1f2_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/cnrm.ssp585.2070-2100.dec.tas.txt")

# FGOALS -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc"
### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc"
### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1444, to = 1804, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1445, to = 1805, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1446, to = 1806, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1447, to = 1807, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1448, to = 1808, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1449, to = 1809, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1450, to = 1810, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1451, to = 1811, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1452, to = 1812, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_historical_r1i1p1f1_gr_185001-201412.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_ssp245_r1i1p1f1_gr_201501-210012.nc"

### annual mean -----------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.tas.txt")

### mensual mean ----------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 -----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_ssp245_r1i1p1f1_gr_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_ssp370_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_ssp370_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_ssp585_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_FGOALS-f3-L_ssp585_r1i1p1f1_gr_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/fgoals.ssp585.2070-2100.dec.tas.txt")


# INM -----

## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_185001-194912.nc"
### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------
list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc"
### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(241:600)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 241, to = 589, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 242, to = 590, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 243, to = 591, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 244, to = 592, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 245, to = 593, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 246, to = 594, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 247, to = 595, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 248, to = 596, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 249, to = 597, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 250, to = 598, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 251, to = 599, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 252, to = 600, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 ----

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = c(421:600)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc"))

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.tas.txt")

### mensual mean ----
list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 421, to = 589, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(1, to = 181, by = 12)))

jan.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.jan.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 422, to = 590, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(2, to = 182, by = 12)))

fev.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.fev.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 423, to = 591, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(3, to = 183, by = 12)))

mar.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.mar.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 424, to = 592, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(4, to = 184, by = 12)))

avr.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.avr.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 425, to = 593, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(5, to = 185, by = 12)))

may.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.may.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 426, to = 594, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(6, to = 186, by = 12)))

jun.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.jun.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 427, to = 595, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(7, to = 187, by = 12)))

jul.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.jul.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 428, to = 596, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(8, to = 188, by = 12)))

agu.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.agu.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 429, to = 597, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(9, to = 189, by = 12)))

sep.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.sep.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 430, to = 598, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(10, to = 190, by = 12)))

oct.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.oct.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 431, to = 599, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(11, to = 191, by = 12)))

nov.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.nov.tas.txt")

list.nf <- list(raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_195001-199912.nc", bands = seq(from = 432, to = 600, by = 12)), raster::stack("/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_historical_r1i1p1f1_gr1_200001-201412.nc", bands = c(12, to = 192, by = 12)))

dec.tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_ssp245_r1i1p1f1_gr1_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_ssp370_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_INM-CM4-8_ssp585_r1i1p1f1_gr1_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.tas.txt")

### mensual mean ----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/inm.ssp585.2070-2100.dec.tas.txt")
# MPI -----
## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean ---- 
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_197*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_198*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*", full.names = T)

### annual mean
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.tas.txt")

### mensual mean
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1970-2000.dec.tas.txt")
## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|tas_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|tas_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|tas_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|tas_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|tas_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|tas_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|tas_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|tas_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|tas_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|tas_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|tas_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/tas", pattern = "tas_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|tas_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|tas_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*", full.names = T)

### annual mean ----
tas.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 49, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 50, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 51, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 52, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 53, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 54, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 55, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 56, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 57, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 58, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 59, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 60, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mpi.ssp585.2070-2100.dec.tas.txt")

# MRI -----
## historical 1850-1880 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1:360)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1, to = 349, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 2, to = 350, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 3, to = 351, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1850-1880.dec.tas.txt")

## historical 1970-2000 ----------

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean --------------
tas.stack <- raster::stack(list.nf, bands = c(1441:1812)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.tas.txt")

### mensual mean ---------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1441, to = 1801, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1442, to = 1802, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1443, to = 1803, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 4, to = 352, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 5, to = 353, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 6, to = 354, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 7, to = 355, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 8, to = 356, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 9, to = 357, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 10, to = 358, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 11, to = 359, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 12, to = 360, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1970-2000.dec.tas.txt")

## historical 1985-2015 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(1621:1980)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 1621, to = 1969, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 1622, to = 1970, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 1623, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 1624, to = 1971, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 1625, to = 1972, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 1626, to = 1973, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 1627, to = 1974, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 1628, to = 1975, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 1629, to = 1976, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 1630, to = 1977, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 1631, to = 1978, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 1632, to = 1979, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.hist.1985-2015.dec.tas.txt")

## SSP245 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----------

tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.tas.txt")

### mensual mean ----------

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2030-2060.dec.tas.txt")

## SSP245 2070-2100----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc"

### annual mean -----

tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.tas.txt")

### mensual mean -----

jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp245.2070-2100.dec.tas.txt")

## SSP370 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2030-2060.dec.tas.txt")

## SSP370 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp370.2070-2100.dec.tas.txt")

## SSP585 2030-2060 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(181:540)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 181, to = 529, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands = seq(from = 182, to = 530, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands = seq(from = 183, to = 531, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands = seq(from = 184, to = 532, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands = seq(from = 185, to = 533, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands = seq(from = 186, to = 534, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands = seq(from = 187, to = 535, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands = seq(from = 188, to = 536, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands = seq(from = 189, to = 537, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands = seq(from = 190, to = 538, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands = seq(from = 191, to = 539, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands = seq(from = 192, to = 540, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2030-2060.dec.tas.txt")

## SSP585 2070-2100 ----

list.nf <- "/bettik/crapartc/CMIP6/tas/tas_Amon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc"

### annual mean ----
tas.stack <- raster::stack(list.nf, bands = c(661:1020)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
tas.df <- as.data.frame(tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.tas.txt")

### mensual mean ----
jan.tas.stack <- raster::stack(list.nf, bands = seq(from = 661, to = 1009, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jan.tas.df <- as.data.frame(jan.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jan.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.jan.tas.txt")

fev.tas.stack <- raster::stack(list.nf, bands =  seq(from = 662, to = 1010, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
fev.tas.df <- as.data.frame(fev.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(fev.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.fev.tas.txt")

mar.tas.stack <- raster::stack(list.nf, bands =  seq(from = 663, to = 1011, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
mar.tas.df <- as.data.frame(mar.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(mar.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.mar.tas.txt")

avr.tas.stack <- raster::stack(list.nf, bands =  seq(from = 664, to = 1012, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
avr.tas.df <- as.data.frame(avr.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(avr.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.avr.tas.txt")

may.tas.stack <- raster::stack(list.nf, bands =  seq(from = 665, to = 1013, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
may.tas.df <- as.data.frame(may.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(may.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.may.tas.txt")

jun.tas.stack <- raster::stack(list.nf, bands =  seq(from = 666, to = 1014, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jun.tas.df <- as.data.frame(jun.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jun.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.jun.tas.txt")

jul.tas.stack <- raster::stack(list.nf, bands =  seq(from = 667, to = 1015, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
jul.tas.df <- as.data.frame(jul.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(jul.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.jul.tas.txt")

agu.tas.stack <- raster::stack(list.nf, bands =  seq(from = 668, to = 1016, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
agu.tas.df <- as.data.frame(agu.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(agu.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.agu.tas.txt")

sep.tas.stack <- raster::stack(list.nf, bands =  seq(from = 669, to = 1017, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
sep.tas.df <- as.data.frame(sep.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(sep.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.sep.tas.txt")

oct.tas.stack <- raster::stack(list.nf, bands =  seq(from = 670, to = 1018, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
oct.tas.df <- as.data.frame(oct.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(oct.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.oct.tas.txt")

nov.tas.stack <- raster::stack(list.nf, bands =  seq(from = 671, to = 1019, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
nov.tas.df <- as.data.frame(nov.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(nov.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.nov.tas.txt")

dec.tas.stack <- raster::stack(list.nf, bands =  seq(from = 672, to = 1020, by = 12)) %>% raster::mean(na.rm = T) %>% raster::rotate() %>% projectRaster(land_mask)
dec.tas.df <- as.data.frame(dec.tas.stack, xy = T) %>% setNames(c("lon","lat","tas"))
write.table(dec.tas.df, file = "/bettik/crapartc/Averages/tas/mri.ssp585.2070-2100.dec.tas.txt")
