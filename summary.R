# Load necessary libraries
library(dplyr)
library(readr)

# Read the dataset
df <- read_csv("Digital Behavior and Mental Health Survey 2022.csv")

# Check if the dataset is loaded correctly
print(head(df))
print(str(df))

# A function that takes in a dataset and returns a list of info about it
compute_summary_info <- function(my_dataframe) {
  summary_info <- list()
  
  # Number of observations
  summary_info$num_observations <- nrow(my_dataframe)
  
  # Average age
  summary_info$average_age <- mean(my_dataframe$Age, na.rm = TRUE)
  
  # Gender distribution
  summary_info$gender_distribution <- my_dataframe %>%
    group_by(Gender) %>%
    summarise(count = n())
  
  # Most common frequency of social media interaction
  summary_info$common_frequency_social_media <- my_dataframe %>%
    count(`Frequency of Social Media Interaction`) %>%
    arrange(desc(n)) %>%
    slice(1) %>%
    pull(`Frequency of Social Media Interaction`)
  
  # Average impact on mental health score
  summary_info$average_impact_score <- mean(my_dataframe$`Impact on Mental Health (Score)`, na.rm = TRUE)
  
  return(summary_info)
}

summary_info <- compute_summary_info(df)

# Print summary information
print(summary_info)

