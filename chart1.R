# Plot for Self-Reported Mental Health Status

library(tidyverse)
library(ggplot2)

df <- read_csv("Digital Behavior and Mental Health Survey 2022.csv")

ggplot(df, aes(x = `Self-reported Mental Health Status`, fill = `Self-reported Mental Health Status`)) +
  geom_bar(color = "black") +
  geom_text(stat = "count", aes(label = stat(count)), vjust = -0.2, color = "black") +
  labs(title = "Distribution of Self-reported Mental Health Status") +
  xlab("Mental Health Status") +
  ylab("Frequency")


