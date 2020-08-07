## SF Crime Classification

# Load packages
library(tidyverse)
library(DataExplorer)


# Read in the data
train <- read.csv("train.csv")
test <- read.csv("test.csv")

# Check for missing values
plot_missing(train)
plot_missing(test)

# No missing values, so that is nice. 

length(unique(train$Category))


# The description and the resolution are not included in the test set, so I will drop those. 
train <- train %>% select(-Resolution, -Descript)
glimpse(train)
head(train)

