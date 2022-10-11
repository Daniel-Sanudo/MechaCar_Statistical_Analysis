library(tidyverse)
df <- read.csv(file = "Datasets/MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)
head(df)
mpg_reg = lm(mpg ~ vehicle_length  + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df)
mpg_reg
summary(mpg_reg)
