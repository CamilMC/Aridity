###Average-awi-test

library(ggplot2)

# historical 1850-1880 --------------

list.nf <- list.files(path="CMIP6/ts", pattern = "ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_185*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_186*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_187*", full.names = T)

## annual mean
ts.stack <- raster::stack(list.nf) %>% mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "CMIP6/ts/awi.hist.1850-1880.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

## mensual mean
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.jan.ts.txt")

fev.stack <- raster::stack(list.nf, bands = 2) %>% mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.fev.ts.txt")

mar.stack <- raster::stack(list.nf, bands = 3) %>% mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.fev.ts.txt")

avr.stack <- raster::stack(list.nf, bands = 4) %>% mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.avr.ts.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.may.ts.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.jun.ts.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.jul.ts.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.agu.ts.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.sep.ts.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.oct.ts.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.nov.ts.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1850-1880.dec.ts.txt")

# historical 1985-2015 -------------

list.nf <- list.files(path="CMIP6/ts", pattern = "ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1985*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1986*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1987*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1988*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_1989*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_199*|ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_20*", full.names = T)

## annual mean ----
ts.stack <- raster::stack(list.nf) %>% mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "CMIP6/ts/awi.hist.1985-2015.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

## mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.jan.ts.txt")

fev.stack <- raster::stack(list.nf, bands = 2) %>% mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.fev.ts.txt")

mar.stack <- raster::stack(list.nf, bands = 3) %>% mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.fev.ts.txt")

avr.stack <- raster::stack(list.nf, bands = 4) %>% mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.avr.ts.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.may.ts.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.jun.ts.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.jul.ts.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.agu.ts.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.sep.ts.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.oct.ts.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.nov.ts.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.hist.1985-2015.dec.ts.txt")

# SSP245 2030-2060 ----

list.nf <- list.files(path="CMIP6/ts", pattern = "ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_203*|ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_204*|ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_205*", full.names = T)

## annual mean ----
ts.stack <- raster::stack(list.nf) %>% mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

## mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.jan.ts.txt")

fev.stack <- raster::stack(list.nf, bands = 2) %>% mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.fev.ts.txt")

mar.stack <- raster::stack(list.nf, bands = 3) %>% mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.fev.ts.txt")

avr.stack <- raster::stack(list.nf, bands = 4) %>% mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.avr.ts.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.may.ts.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.jun.ts.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.jul.ts.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.agu.ts.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.sep.ts.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.oct.ts.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.nov.ts.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2030-2060.dec.ts.txt")

# SSP245 2070-2100 ----

list.nf <- list.files(path="CMIP6/ts", pattern = "ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_207*|ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_208*|ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_209*|ts_Amon_AWI-CM-1-1-MR_ssp245_r1i1p1f1_gn_210*", full.names = T)

## annual mean ----
ts.stack <- raster::stack(list.nf) %>% mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

## mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.jan.ts.txt")

fev.stack <- raster::stack(list.nf, bands = 2) %>% mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.fev.ts.txt")

mar.stack <- raster::stack(list.nf, bands = 3) %>% mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.fev.ts.txt")

avr.stack <- raster::stack(list.nf, bands = 4) %>% mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.avr.ts.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.may.ts.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.jun.ts.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.jul.ts.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.agu.ts.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.sep.ts.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.oct.ts.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.nov.ts.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp245.2070-2100.dec.ts.txt")

# SSP370 2070-2100 ----

list.nf <- list.files(path="CMIP6/ts", pattern = "ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_203*|ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_204*|ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_205*", full.names = T)

## annual mean ----
ts.stack <- raster::stack(list.nf) %>% mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

## mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.jan.ts.txt")

fev.stack <- raster::stack(list.nf, bands = 2) %>% mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.fev.ts.txt")

mar.stack <- raster::stack(list.nf, bands = 3) %>% mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.fev.ts.txt")

avr.stack <- raster::stack(list.nf, bands = 4) %>% mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.avr.ts.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.may.ts.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.jun.ts.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.jul.ts.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.agu.ts.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.sep.ts.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.oct.ts.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.nov.ts.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.dec.ts.txt")

# SSP370 2070-2100 ----

list.nf <- list.files(path="CMIP6/ts", pattern = "ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_207*|ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_208*|ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_209*|ts_Amon_AWI-CM-1-1-MR_ssp370_r1i1p1f1_gn_210*", full.names = T)

## annual mean ----
ts.stack <- raster::stack(list.nf) %>% mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

## mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.jan.ts.txt")

fev.stack <- raster::stack(list.nf, bands = 2) %>% mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.fev.ts.txt")

mar.stack <- raster::stack(list.nf, bands = 3) %>% mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.fev.ts.txt")

avr.stack <- raster::stack(list.nf, bands = 4) %>% mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.avr.ts.txt")

may.stack <- raster::stack(list.nf, bands = 5) %>% mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.may.ts.txt")

jun.stack <- raster::stack(list.nf, bands = 6) %>% mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.jun.ts.txt")

jul.stack <- raster::stack(list.nf, bands = 7) %>% mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.jul.ts.txt")

agu.stack <- raster::stack(list.nf, bands = 8) %>% mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.agu.ts.txt")

sep.stack <- raster::stack(list.nf, bands = 9) %>% mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.sep.ts.txt")

oct.stack <- raster::stack(list.nf, bands = 10) %>% mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.oct.ts.txt")

nov.stack <- raster::stack(list.nf, bands = 11) %>% mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.nov.ts.txt")

dec.stack <- raster::stack(list.nf, bands = 12) %>% mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "CMIP6/ts/awi.ssp370.2070-2100.dec.ts.txt")