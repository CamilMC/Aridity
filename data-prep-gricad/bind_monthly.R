# Libraries ---- 

library(raster)
library(dplyr)
library(stringr)

# tas ---- 

all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 1), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 1), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 1), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 1), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 1), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 1), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 1), source = "NorESM-2-MM")) 

write.table(all_january, "/bettik/crapartc/All_mensual/tas.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 2), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 2), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 2), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 2), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 2), source = "NorESM-2-MM"))

write.table(all_february, "/bettik/crapartc/All_mensual/tas.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 3), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 3), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 3), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 3), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 3), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 3), source = "NorESM-2-MM"))

write.table(all_march, "/bettik/crapartc/All_mensual/tas.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 4), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 4), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 4), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 4), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 4), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 4), source = "NorESM-2-MM"))

write.table(all_april, "/bettik/crapartc/All_mensual/tas.all_april.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 5), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 5), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 5), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 5), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 5), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 5), source = "NorESM-2-MM"))

write.table(all_may, "/bettik/crapartc/All_mensual/tas.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 6), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 6), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 6), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 6), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 6), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 6), source = "NorESM-2-MM"))

write.table(all_june, "/bettik/crapartc/All_mensual/tas.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 7), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 7), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 7), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 7), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 7), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 7), source = "NorESM-2-MM"))

write.table(all_july, "/bettik/crapartc/All_mensual/tas.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 8), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 8), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 8), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 8), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 8), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 8), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 8), source = "NorESM-2-MM"))

write.table(all_august, "/bettik/crapartc/All_mensual/tas.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 9), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 9), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 9), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 9), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 9), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 9), source = "NorESM-2-MM"))

write.table(all_september, "/bettik/crapartc/All_mensual/tas.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 10), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 10), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 10), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 10), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 10), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 10), source = "NorESM-2-MM"))

write.table(all_october, "/bettik/crapartc/All_mensual/tas.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 11), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 11), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 11), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 11), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 11), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 11), source = "NorESM-2-MM"))

write.table(all_november, "/bettik/crapartc/All_mensual/tas.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.tas_ipcc.txt"), lm == 1, month == 12), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.tas_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.tas_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.tas_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.tas_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.tas_ipcc.txt"), lm == 1, month == 12), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.tas_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.tas_ipcc.txt"), lm == 1, month == 12), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.tas_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.tas_ipcc.txt"), lm == 1, month == 12), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.tas_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.tas_ipcc.txt"), lm == 1, month == 12), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.tas_ipcc.txt"), lm == 1, month == 12), source = "NorESM-2-MM"))

write.table(all_december, "/bettik/crapartc/All_mensual/tas.all_december.txt")

# pr ----


all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 1), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 1), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 1), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 1), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 1), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 1), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 1), source = "NorESM-2-MM")) 

write.table(all_january, "/bettik/crapartc/All_mensual/pr.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 2), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 2), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 2), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 2), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 2), source = "NorESM-2-MM"))

write.table(all_february, "/bettik/crapartc/All_mensual/pr.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 3), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 3), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 3), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 3), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 3), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 3), source = "NorESM-2-MM"))

write.table(all_march, "/bettik/crapartc/All_mensual/pr.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 4), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 4), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 4), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 4), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 4), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 4), source = "NorESM-2-MM"))

write.table(all_april, "/bettik/crapartc/All_mensual/pr.all_april.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 5), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 5), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 5), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 5), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 5), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 5), source = "NorESM-2-MM"))

write.table(all_may, "/bettik/crapartc/All_mensual/pr.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 6), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 6), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 6), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 6), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 6), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 6), source = "NorESM-2-MM"))

write.table(all_june, "/bettik/crapartc/All_mensual/pr.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 7), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 7), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 7), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 7), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 7), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 7), source = "NorESM-2-MM"))

write.table(all_july, "/bettik/crapartc/All_mensual/pr.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 8), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 8), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 8), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 8), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 8), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 8), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 8), source = "NorESM-2-MM"))

write.table(all_august, "/bettik/crapartc/All_mensual/pr.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 9), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 9), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 9), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 9), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 9), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 9), source = "NorESM-2-MM"))

write.table(all_september, "/bettik/crapartc/All_mensual/pr.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 10), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 10), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 10), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 10), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 10), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 10), source = "NorESM-2-MM"))

write.table(all_october, "/bettik/crapartc/All_mensual/pr.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 11), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 11), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 11), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 11), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 11), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 11), source = "NorESM-2-MM"))

write.table(all_november, "/bettik/crapartc/All_mensual/pr.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.pr_ipcc.txt"), lm == 1, month == 12), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.pr_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.pr_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.pr_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.pr_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.pr_ipcc.txt"), lm == 1, month == 12), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.pr_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.pr_ipcc.txt"), lm == 1, month == 12), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.pr_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.pr_ipcc.txt"), lm == 1, month == 12), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.pr_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.pr_ipcc.txt"), lm == 1, month == 12), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.pr_ipcc.txt"), lm == 1, month == 12), source = "NorESM-2-MM"))

write.table(all_december, "/bettik/crapartc/All_mensual/pr.all_december.txt")

# sfcWind ----


all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 1), source = "NorESM-2-MM")) 

write.table(all_january, "/bettik/crapartc/All_mensual/sfcWind.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "NorESM-2-MM"))

write.table(all_february, "/bettik/crapartc/All_mensual/sfcWind.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 3), source = "NorESM-2-MM"))

write.table(all_march, "/bettik/crapartc/All_mensual/sfcWind.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 4), source = "NorESM-2-MM"))

write.table(all_april, "/bettik/crapartc/All_mensual/sfcWind.all_april.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 5), source = "NorESM-2-MM"))

write.table(all_may, "/bettik/crapartc/All_mensual/sfcWind.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 6), source = "NorESM-2-MM"))

write.table(all_june, "/bettik/crapartc/All_mensual/sfcWind.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 7), source = "NorESM-2-MM"))

write.table(all_july, "/bettik/crapartc/All_mensual/sfcWind.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 8), source = "NorESM-2-MM"))

write.table(all_august, "/bettik/crapartc/All_mensual/sfcWind.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 9), source = "NorESM-2-MM"))

write.table(all_september, "/bettik/crapartc/All_mensual/sfcWind.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 10), source = "NorESM-2-MM"))

write.table(all_october, "/bettik/crapartc/All_mensual/sfcWind.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 11), source = "NorESM-2-MM"))

write.table(all_november, "/bettik/crapartc/All_mensual/sfcWind.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.sfcWind_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.sfcWind_ipcc.txt"), lm == 1, month == 12), source = "NorESM-2-MM"))

write.table(all_december, "/bettik/crapartc/All_mensual/sfcWind.all_december.txt")

# hfls ----


all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 1), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 1), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 1), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 1), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 1), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 1), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 1), source = "NorESM-2-MM")) 

write.table(all_january, "/bettik/crapartc/All_mensual/hfls.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 2), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 2), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 2), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 2), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 2), source = "NorESM-2-MM"))

write.table(all_february, "/bettik/crapartc/All_mensual/hfls.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 3), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 3), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 3), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 3), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 3), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 3), source = "NorESM-2-MM"))

write.table(all_march, "/bettik/crapartc/All_mensual/hfls.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 4), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 4), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 4), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 4), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 4), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 4), source = "NorESM-2-MM"))

write.table(all_april, "/bettik/crapartc/All_mensual/hfls.all_april.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 5), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 5), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 5), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 5), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 5), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 5), source = "NorESM-2-MM"))

write.table(all_may, "/bettik/crapartc/All_mensual/hfls.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 6), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 6), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 6), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 6), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 6), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 6), source = "NorESM-2-MM"))

write.table(all_june, "/bettik/crapartc/All_mensual/hfls.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 7), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 7), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 7), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 7), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 7), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 7), source = "NorESM-2-MM"))

write.table(all_july, "/bettik/crapartc/All_mensual/hfls.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 8), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 8), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 8), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 8), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 8), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 8), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 8), source = "NorESM-2-MM"))

write.table(all_august, "/bettik/crapartc/All_mensual/hfls.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 9), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 9), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 9), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 9), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 9), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 9), source = "NorESM-2-MM"))

write.table(all_september, "/bettik/crapartc/All_mensual/hfls.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 10), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 10), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 10), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 10), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 10), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 10), source = "NorESM-2-MM"))

write.table(all_october, "/bettik/crapartc/All_mensual/hfls.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 11), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 11), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 11), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 11), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 11), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 11), source = "NorESM-2-MM"))

write.table(all_november, "/bettik/crapartc/All_mensual/hfls.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hfls_ipcc.txt"), lm == 1, month == 12), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hfls_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hfls_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hfls_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hfls_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hfls_ipcc.txt"), lm == 1, month == 12), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hfls_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hfls_ipcc.txt"), lm == 1, month == 12), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hfls_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hfls_ipcc.txt"), lm == 1, month == 12), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hfls_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hfls_ipcc.txt"), lm == 1, month == 12), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hfls_ipcc.txt"), lm == 1, month == 12), source = "NorESM-2-MM"))

write.table(all_december, "/bettik/crapartc/All_mensual/hfls.all_december.txt")


# hfss ----


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

# hurs -----


all_january <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 1), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 1), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 1), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 1), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 1), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 1), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 1), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 1), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 1), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 1), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 1), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 1), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 1), source = "NorESM-2-MM")) 

write.table(all_january, "/bettik/crapartc/All_mensual/hurs.all_january.txt")

all_february <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 2), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 2), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 2), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 2), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 2), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 2), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 2), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 2), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 2), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 2), source = "NorESM-2-MM"))

write.table(all_february, "/bettik/crapartc/All_mensual/hurs.all_february.txt")

all_march <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 3), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 3), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 3), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 3), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 3), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 3), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 3), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 3), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 3), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 3), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 3), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 3), source = "NorESM-2-MM"))

write.table(all_march, "/bettik/crapartc/All_mensual/hurs.all_march.txt")

all_april <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 4), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 4), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 4), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 4), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 4), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 4), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 4), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 4), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 4), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 4), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 4), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 4), source = "NorESM-2-MM"))

write.table(all_april, "/bettik/crapartc/All_mensual/hurs.all_april.txt")

all_may <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 5), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 5), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 5), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 5), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 5), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 5), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 5), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 5), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 5), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 5), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 5), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 5), source = "NorESM-2-MM"))

write.table(all_may, "/bettik/crapartc/All_mensual/hurs.all_may.txt")

all_june <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 6), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 6), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 6), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 6), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 6), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 6), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 6), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 6), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 6), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 6), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 6), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 6), source = "NorESM-2-MM"))

write.table(all_june, "/bettik/crapartc/All_mensual/hurs.all_june.txt")

all_july <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 7), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 7), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 7), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 7), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 7), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 7), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 7), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 7), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 7), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 7), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 7), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 7), source = "NorESM-2-MM"))

write.table(all_july, "/bettik/crapartc/All_mensual/hurs.all_july.txt")

all_august <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 8), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 8), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 8), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 8), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 8), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 8), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 8), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 8), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 8), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 8), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 8), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 8), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 8), source = "NorESM-2-MM"))

write.table(all_august, "/bettik/crapartc/All_mensual/hurs.all_august.txt")

all_september <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 9), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 9), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 9), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 9), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 9), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 9), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 9), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 9), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 9), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 9), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 9), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 9), source = "NorESM-2-MM"))

write.table(all_september, "/bettik/crapartc/All_mensual/hurs.all_september.txt")

all_october <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 10), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 10), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 10), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 10), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 10), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 10), source = "FGOALS")) %>%
    rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 10), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 10), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 10), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 10), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 10), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 10), source = "NorESM-2-MM"))

write.table(all_october, "/bettik/crapartc/All_mensual/hurs.all_october.txt")

all_november <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 11), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 11), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 11), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 11), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 11), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 11), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 11), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 11), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 11), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 11), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 11), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 11), source = "NorESM-2-MM"))

write.table(all_november, "/bettik/crapartc/All_mensual/hurs.all_november.txt")

all_december <- mutate(filter(read.table("/bettik/crapartc/IPCC/cas.esm2m.hurs_ipcc.txt"), lm == 1, month == 12), source = "CAS-ESM2") %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cesmm.hurs_ipcc.txt"), lm == 1, month == 12), source = "CESM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmccm.hurs_ipcc.txt"), lm == 1, month == 12), source = "CMCC")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cmcc.esm2m.hurs_ipcc.txt"), lm == 1, month == 2), source = "CMCC-ESM2")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/cnrmm.hurs_ipcc.txt"), lm == 1, month == 12), source = "CNRM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/ec.earth3m.hurs_ipcc.txt"), lm == 1, month == 12), source = "EC-Earth3")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/fgoalsm.hurs_ipcc.txt"), lm == 1, month == 12), source = "FGOALS")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/gfdl.esm4m.hurs_ipcc.txt"), lm == 1, month == 12), source = "GFDL-ESM4")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inmm.hurs_ipcc.txt"), lm == 1, month == 12), source = "INM")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/inm.cm5m.hurs_ipcc.txt"), lm == 1, month == 12), source = "INM-CM5")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mpim.hurs_ipcc.txt"), lm == 1, month == 12), source = "MPI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/mrim.hurs_ipcc.txt"), lm == 1, month == 12), source = "MRI")) %>%
  rbind(mutate(filter(read.table("/bettik/crapartc/IPCC/noresmm.hurs_ipcc.txt"), lm == 1, month == 12), source = "NorESM-2-MM"))

write.table(all_december, "/bettik/crapartc/All_mensual/hurs.all_december.txt")