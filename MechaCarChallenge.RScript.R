# DELIVERABLE 1:

library(dplyr)

MechaCar_df <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df))
# _________________________

# DELIVERABLE 2:

Suspension_df <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- Suspension_df %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), variance_PSI=var(PSI), st_dev_PSI=sd(PSI))

lot_summary <- Suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(mean_PSI=mean(PSI), median_PSI=median(PSI), variance_PSI=var(PSI), st_dev_PSI=sd(PSI))
# __________________________

# DELIVARABLE 3:

t.test(Suspension_df$PSI, mu=1500)

t.test(subset(Suspension_df$PSI, Suspension_df$Manufacturing_Lot == 'Lot1'), mu=1500)

t.test(subset(Suspension_df$PSI, Suspension_df$Manufacturing_Lot == 'Lot2'), mu=1500)

t.test(subset(Suspension_df$PSI, Suspension_df$Manufacturing_Lot == 'Lot3'), mu=1500)

