library(ncdf4)
library(ggplot2)

test <- nc_open("/bettik/crapartc/CMIP6/ts/ts_Amon_AWI-CM-1-1-MR_historical_r1i1p1f1_gn_185001-185012.nc")
print(test)

plot(c(1:10), c(1:10))

df <- data.frame(test = c(1, 2, 3), retest = c(1, 2, 3))
View(df)


## SSP585 2030-2060 ----

list.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_203*|ts_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_204*|ts_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_205*|ts_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_210*", full.names = T)

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2030-2060.dec.ts.txt")

## SSP585 2070-2100 ----

## SSP585 2070-2100 ----


List.nf <- list.files(path="/bettik/crapartc/CMIP6/ts", pattern = "ts_Amon_BCC-CSM2-MR_ssp585_r1i1p1f1_gn_201501-209912.nc"

### annual mean ----
ts.stack <- raster::stack(list.nf) %>% raster::mean(na.rm = T)
ts.df <- as.data.frame(ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.ts.txt")

ggplot(ts.df)+geom_raster(aes(x=lon, y = lat, fill = temp_k))

### mensual mean ----
jan.ts.stack <- raster::stack(list.nf, bands = 1) %>% raster::mean(na.rm = T)
jan.ts.df <- as.data.frame(jan.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jan.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.jan.ts.txt")

fev.ts.stack <- raster::stack(list.nf, bands = 2) %>% raster::mean(na.rm = T)
fev.ts.df <- as.data.frame(fev.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(fev.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.fev.ts.txt")

mar.ts.stack <- raster::stack(list.nf, bands = 3) %>% raster::mean(na.rm = T)
mar.ts.df <- as.data.frame(mar.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(mar.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.fev.ts.txt")

avr.ts.stack <- raster::stack(list.nf, bands = 4) %>% raster::mean(na.rm = T)
avr.ts.df <- as.data.frame(avr.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(avr.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.avr.ts.txt")

may.ts.stack <- raster::stack(list.nf, bands = 5) %>% raster::mean(na.rm = T)
may.ts.df <- as.data.frame(may.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(may.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.may.ts.txt")

jun.ts.stack <- raster::stack(list.nf, bands = 6) %>% raster::mean(na.rm = T)
jun.ts.df <- as.data.frame(jun.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jun.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.jun.ts.txt")

jul.ts.stack <- raster::stack(list.nf, bands = 7) %>% raster::mean(na.rm = T)
jul.ts.df <- as.data.frame(jul.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(jul.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.jul.ts.txt")

agu.ts.stack <- raster::stack(list.nf, bands = 8) %>% raster::mean(na.rm = T)
agu.ts.df <- as.data.frame(agu.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(agu.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.agu.ts.txt")

sep.ts.stack <- raster::stack(list.nf, bands = 9) %>% raster::mean(na.rm = T)
sep.ts.df <- as.data.frame(sep.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(sep.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.sep.ts.txt")

oct.ts.stack <- raster::stack(list.nf, bands = 10) %>% raster::mean(na.rm = T)
oct.ts.df <- as.data.frame(oct.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(oct.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.oct.ts.txt")

nov.ts.stack <- raster::stack(list.nf, bands = 11) %>% raster::mean(na.rm = T)
nov.ts.df <- as.data.frame(nov.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(nov.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.nov.ts.txt")

dec.ts.stack <- raster::stack(list.nf, bands = 12) %>% raster::mean(na.rm = T)
dec.ts.df <- as.data.frame(dec.ts.stack, xy = T) %>% setNames(c("lon","lat","temp_k"))
write.table(dec.ts.df, file = "/bettik/crapartc/Averages/ts/bcc.ssp585.2070-2100.dec.ts.txt")

