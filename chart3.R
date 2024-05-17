library(ggplot2)
library(tidyverse)

mental_health_data <- read.csv("Digital Behavior and Mental Health Survey 2022.csv")

ggplot(mental_health_data, aes(x = Age, y = Impact.on.Mental.Health..Score., color = Gender)) +
  geom_point() +
  scale_color_manual(values = c("Female" = "red", "Male" = "blue")) +
  labs(title = "Age vs Impact on Mental Health Score",
       x = "Age",
       y = "Mental Health Score",
       color = "Gender") +
  theme_minimal() +
  geom_smooth(method = "lm", se = FALSE)

