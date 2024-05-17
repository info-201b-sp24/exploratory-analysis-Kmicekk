# table summary
library(tidyverse)
library(glue)

mental_health_data <- read.csv("Digital Behavior and Mental Health Survey 2022.csv")
summary_table <- mental_health_data %>%
  group_by(Frequency.of.Social.Media.Interaction) %>%
  summarize(
    avg_age = round(mean(Age, na.rm = TRUE), 1),
    avg_mental_health_score = round(mean(Impact.on.Mental.Health..Score., na.rm = TRUE), 1)
  )



