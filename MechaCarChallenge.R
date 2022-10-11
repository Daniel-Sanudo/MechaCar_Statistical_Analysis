# Import tidyverse library
library(tidyverse)
# Read mpg.csv file as a dataframe 
mpg_df <- read.csv(file = "Datasets/MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)
# Show the head of the mpg dataframe
head(mpg_df)
# Create linear regression using the 6 columns from the dataframe
mpg_reg = lm(mpg ~ vehicle_length  + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_df)
# Show linear regression coefficients
mpg_reg
# Summarize results from mpg analysis
summary(mpg_reg)
# Read Suspension_Coil.csv file 
coil_df <- read.csv("Datasets/Suspension_Coil.csv", check.names = F, stringsAsFactors =F )
# Show the first entries of the coils dataframe
head(coil_df)
# Create summary table for the mean, median, variance, and standard deviation PSI 
coil_psi_summary <- coil_df %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
# Show summary
coil_psi_summary
# Group coil data by lot and summarize it
coil_lot_psi_summary <- coil_df %>% group_by(Manufacturing_Lot)%>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance=var(PSI), Std_Dev=sd(PSI))
# Convert tibble summary into a dataframe
coil_lot_psi_summary <- as.data.frame(coil_lot_psi_summary)
# Show summary
coil_lot_psi_summary
