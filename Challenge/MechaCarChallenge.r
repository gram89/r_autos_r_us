# Import dependency
library(dplyr)


# Import and read CSV file as a dataframe
MechaCarMpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)


# Perform linear regression on all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMpg)


## Gather summary data to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCarMpg))