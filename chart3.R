# Violin Plot of Age by Frequency of Social Media Interaction
library(ggplot2)
library(tidyverse)

# Read the dataset
df <- read_csv("Digital Behavior and Mental Health Survey 2022.csv")

# Generate the violin plot
ggplot(df, aes(x = `Frequency of Social Media Interaction`, y = Age, fill = `Frequency of Social Media Interaction`)) +
  geom_violin(trim = FALSE) +
  labs(title = "Age Distribution by Frequency of Social Media Interaction",
       x = "Frequency of Social Media Interaction",
       y = "Age") +
  theme_minimal() +
  scale_fill_brewer(palette = "Pastel1") +
  theme(legend.position = "none")


