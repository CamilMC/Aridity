cmip6 <- read.table("cmip6_AI.txt")

cmip6ext <- cmip6

cmip6ext$AIref <- NA
cmip6ext$catAIref <- NA

for(i in unique(cmip6ext$source)){
  for (j in as.numeric(rownames(cmip6ext))){
      AIref <- subset(cmip6ext, lon == cmip6ext$lon[j] & lat == cmip6ext$lat[j] & period == "1970_2000" & source == i) %>% pull(AI)
      catAIref <- subset(cmip6ext, lon == cmip6ext$lon[j] & lat == cmip6ext$lat[j] & period == "1970_2000" & source == i) %>% pull(cat.AI)
  cmip6ext$AIref[j] <- AIref
  cmip6ext$catAIref[j] <- catAIref
  }
}

write.table(cmip6ext, "cmip6ext.txt")