library(dbplyr)
# Part 1
MechaCar <-
  read.csv(file = 'MechaCar_mpg.csv',
           check.names = F,
           stringsAsFactors = F)

# Generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
   data = MechaCar_mpg)

# Generate summary statistics
summary(
  lm(
    mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,
    data = MechaCar_mpg
  )
)

# Part 2: Reading the Suspension Coil dataset


SusCoil <-
  read.csv(file = 'Suspension_Coil.csv',
           check.names = F,
           stringsAsFactors = F)


library(tidyverse)
total_summary <-
  Suspension_Coil %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')
lot_summary <-
  Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI), median(PSI), var(PSI), sd(PSI), .groups = 'keep')

# Suspension Coil T-Test
t.test(Suspension_Coil$PSI, mu = 1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == 'Lot1'), mu = 1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == 'Lot2'), mu = 1500)
t.test(subset(Suspension_Coil$PSI, Suspension_Coil$Manufacturing_Lot == 'Lot3'), mu = 1500)







