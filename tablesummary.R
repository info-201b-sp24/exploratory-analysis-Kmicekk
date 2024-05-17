# table summary
library(tidyverse)
library(dplyr)

table1 <- read.csv(file.choose(), header = TRUE)

table1$Frequency.of.Social.Media.Interaction
table1$Self.reported.Mental.Health.Status

table(table1$Frequency.of.Social.Media.Interaction, table1$Self.reported.Mental.Health.Status)



