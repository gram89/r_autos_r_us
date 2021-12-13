# Import dependency
library(dplyr)


# Import and read CSV file as a dataframe
MechaCarMpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)


# Perform linear regression on all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMpg)


## Gather summary data to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMpg))

# Deliverable 2

# Import and read CSV file as a dataframe
Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)


# Use summarize() to create total_summary dataframe on PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), 
                                               Median=median(PSI), 
                                               Variance=var(PSI), 
                                               SD=sd(PSI), 
                                               .groups = 'keep')


# Use groupby() and summarize() to create a lot_summary dataframe
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarise(
  Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), 
  .groups = 'keep')

#Deliverable 3
# T-test for all manufacturing lots
t.test(Suspension_Coil$PSI, mu = 1500)


# Use t.test() to determine if PSI across all mfg lots is statistically 
# different across each mfg lot
# Lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)


# Lot 2
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot2")$PSI, mu = 1500)


# Lot 3
t.test(subset(Suspension_Coil,Manufacturing_Lot == "Lot3")$PSI, mu = 1500)