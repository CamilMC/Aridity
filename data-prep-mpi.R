library(ggplot2)
library(dplyr)
library(raster)
library(httpgd)

ex_raster <- raster("/bettik/crapartc/CMIP6/ts/ts_Amon_CMCC-CM2-SR5_historical_r1i1p1f1_gn_185001-201412.nc")

# Average-mpi-temperature ----

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1850-1880.dec.ts.txt")

## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|ts_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.hist.1985-2015.dec.ts.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2030-2060.dec.ts.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*|ts_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp245.2070-2100.dec.ts.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*|ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.ts.txt")

ggplot(ts.df) + geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2030-2060.dec.ts.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*|ts_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp370.2070-2100.dec.ts.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*|ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2030-2060.dec.ts.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*|ts_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = ts))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","ts"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/mpi.ssp585.2070-2100.dec.ts.txt")

# Average-mpi-precipitation -----   

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1850-1880.dec.pr.txt")

## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|pr_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.hist.1985-2015.dec.pr.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2030-2060.dec.pr.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*|pr_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp245.2070-2100.dec.pr.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*|pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.pr.txt")

ggplot(pr.df) + geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2030-2060.dec.pr.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*|pr_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp370.2070-2100.dec.pr.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*|pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2030-2060.dec.pr.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/pr", pattern = "pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*|pr_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
pr.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
pr.df <- as.data.frame(pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.pr.txt")

ggplot(pr.df)+geom_raster(aes(x=lon, y = lat, fill = pr))

### mensual mean ----
jan.pr.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.pr.df <- as.data.frame(jan.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jan.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.jan.pr.txt")

fev.pr.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.pr.df <- as.data.frame(fev.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(fev.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.fev.pr.txt")

mar.pr.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.pr.df <- as.data.frame(mar.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(mar.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.fev.pr.txt")

avr.pr.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.pr.df <- as.data.frame(avr.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(avr.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.avr.pr.txt")

may.pr.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.pr.df <- as.data.frame(may.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(may.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.may.pr.txt")

jun.pr.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.pr.df <- as.data.frame(jun.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jun.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.jun.pr.txt")

jul.pr.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.pr.df <- as.data.frame(jul.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(jul.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.jul.pr.txt")

agu.pr.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.pr.df <- as.data.frame(agu.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(agu.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.agu.pr.txt")

sep.pr.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.pr.df <- as.data.frame(sep.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(sep.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.sep.pr.txt")

oct.pr.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.pr.df <- as.data.frame(oct.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(oct.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.oct.pr.txt")

nov.pr.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.pr.df <- as.data.frame(nov.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(nov.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.nov.pr.txt")

dec.pr.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.pr.df <- as.data.frame(dec.pr.stack, xy = T) %>% setNames(c("lon","lat","pr"))
write.table(dec.pr.df, file = "/bettik/crapartc/Averages/pr/mpi.ssp585.2070-2100.dec.pr.txt")

# Average-mpi-irradition -----   

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1850-1880.dec.rsds.txt")

## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|rsds_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.hist.1985-2015.dec.rsds.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2030-2060.dec.rsds.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*|rsds_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp245.2070-2100.dec.rsds.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*|rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.rsds.txt")

ggplot(rsds.df) + geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2030-2060.dec.rsds.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*|rsds_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp370.2070-2100.dec.rsds.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*|rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.avr.rsds.txt")

may.rsds.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.may.rsds.txt")

jun.rsds.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.jun.rsds.txt")

jul.rsds.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.jul.rsds.txt")

agu.rsds.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.agu.rsds.txt")

sep.rsds.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.sep.rsds.txt")

oct.rsds.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.oct.rsds.txt")

nov.rsds.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.nov.rsds.txt")

dec.rsds.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2030-2060.dec.rsds.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/rsds", pattern = "rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*|rsds_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
rsds.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
rsds.df <- as.data.frame(rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.rsds.txt")

ggplot(rsds.df)+geom_raster(aes(x=lon, y = lat, fill = rsds))

### mensual mean ----
jan.rsds.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.rsds.df <- as.data.frame(jan.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jan.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.jan.rsds.txt")

fev.rsds.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.rsds.df <- as.data.frame(fev.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(fev.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.fev.rsds.txt")

mar.rsds.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.rsds.df <- as.data.frame(mar.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(mar.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.fev.rsds.txt")

avr.rsds.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.rsds.df <- as.data.frame(avr.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(avr.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.avr.rsds.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.rsds.df <- as.data.frame(may.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(may.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.may.rsds.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.rsds.df <- as.data.frame(jun.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jun.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.jun.rsds.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.rsds.df <- as.data.frame(jul.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(jul.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.jul.rsds.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.rsds.df <- as.data.frame(agu.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(agu.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.agu.rsds.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.rsds.df <- as.data.frame(sep.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(sep.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.sep.rsds.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.rsds.df <- as.data.frame(oct.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(oct.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.oct.rsds.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.rsds.df <- as.data.frame(nov.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(nov.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.nov.rsds.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.rsds.df <- as.data.frame(dec.rsds.stack, xy = T) %>% setNames(c("lon","lat","rsds"))
write.table(dec.rsds.df, file = "/bettik/crapartc/Averages/rsds/mpi.ssp585.2070-2100.dec.rsds.txt")

# Average-mpi-wind -----   

## historical 1850-1880 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_185*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_186*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_187*", full.names = T)

### annual mean
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1850-1880.dec.sfcWind.txt")

## historical 1985-2015 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1985*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1986*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1987*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1988*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_1989*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_199*|sfcWind_Amon_MPI-ESM1-2-HR_historical_r1i1p1f1_gn_20*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.hist.1985-2015.dec.sfcWind.txt")

## SSP245 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_203*|sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_204*|sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_205*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2030-2060.dec.sfcWind.txt")

## SSP245 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_207*|sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_208*|sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_209*|sfcWind_Amon_MPI-ESM1-2-HR_ssp245_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp245.2070-2100.dec.sfcWind.txt")

## SSP370 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_203*|sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_204*|sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_205*|sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.sfcWind.txt")

ggplot(sfcWind.df) + geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2030-2060.dec.sfcWind.txt")

## SSP370 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_207*|sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_208*|sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_209*|sfcWind_Amon_MPI-ESM1-2-HR_ssp370_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp370.2070-2100.dec.sfcWind.txt")

## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_203*|sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_204*|sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_205*|sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2030-2060.dec.sfcWind.txt")

## SSP585 2070-2100 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/sfcWind", pattern = "sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_207*|sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_208*|sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_209*|sfcWind_Amon_MPI-ESM1-2-HR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
sfcWind.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sfcWind.df <- as.data.frame(sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.sfcWind.txt")

ggplot(sfcWind.df)+geom_raster(aes(x=lon, y = lat, fill = sfcWind))

### mensual mean ----
jan.sfcWind.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jan.sfcWind.df <- as.data.frame(jan.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jan.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.jan.sfcWind.txt")

fev.sfcWind.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
fev.sfcWind.df <- as.data.frame(fev.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(fev.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.fev.sfcWind.txt")

mar.sfcWind.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
mar.sfcWind.df <- as.data.frame(mar.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(mar.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.fev.sfcWind.txt")

avr.sfcWind.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
avr.sfcWind.df <- as.data.frame(avr.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(avr.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.avr.sfcWind.txt")

may.sfcWind.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
may.sfcWind.df <- as.data.frame(may.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(may.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.may.sfcWind.txt")

jun.sfcWind.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jun.sfcWind.df <- as.data.frame(jun.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jun.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.jun.sfcWind.txt")

jul.sfcWind.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
jul.sfcWind.df <- as.data.frame(jul.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(jul.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.jul.sfcWind.txt")

agu.sfcWind.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
agu.sfcWind.df <- as.data.frame(agu.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(agu.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.agu.sfcWind.txt")

sep.sfcWind.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
sep.sfcWind.df <- as.data.frame(sep.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(sep.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.sep.sfcWind.txt")

oct.sfcWind.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
oct.sfcWind.df <- as.data.frame(oct.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(oct.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.oct.sfcWind.txt")

nov.sfcWind.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
nov.sfcWind.df <- as.data.frame(nov.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(nov.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.nov.sfcWind.txt")

dec.sfcWind.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T) %>% projectRaster(ex_raster)
dec.sfcWind.df <- as.data.frame(dec.sfcWind.stack, xy = T) %>% setNames(c("lon","lat","sfcWind"))
write.table(dec.sfcWind.df, file = "/bettik/crapartc/Averages/sfcWind/mpi.ssp585.2070-2100.dec.sfcWind.txt")