# ===================================================================
# Lesson 12: Inference for the Mean of Differences (Two Dependent Samples)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests and Confidence Intervals =========================



# Weight Loss Example -------------------------------------
# Load the weight_loss data:
library(rio)
weight_loss <- import("https://byuistats.github.io/M221R/Data/weight_loss.xlsx")

# Compute Column of Differences
weight_loss$difference <- weight_loss$post - weight_loss$pre

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(weight_loss$difference) 

# Graphical Summaries -------------------------------------
## Using base R
library(ggplot2)
hist(weight_loss$difference)
boxplot(weight_loss$difference, horizontal=TRUE)

## Using ggplot
ggplot(weight_loss, aes(x=difference)) +
  geom_histogram()
ggplot(weight_loss, aes(x=difference)) +
  geom_boxplot()

# Hypothesis Test -----------------------------------------
t.test(weight_loss$difference,     # Data
       mu = 0,                     # Value from null hypothesis
       alternative = "two.sided")  # Could be "two.sided", "greater" or "less"



# Hospital Infections Data --------------------------------
# Load the hospital_infections data:
library(rio)
hospital_infections <- import("https://byuistats.github.io/M221R/Data/hospital_infections.xlsx")

# Compute Column of Differences
hospital_infections$difference <- 
  hospital_infections$infected - hospital_infections$not_infected

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(hospital_infections$difference) 

# Graphical Summaries -------------------------------------
## Using base R
hist(hospital_infections$difference)
boxplot(hospital_infections$difference, horizontal=TRUE)

## Using ggplot
ggplot(hospital_infections, aes(x=difference)) +
  geom_histogram()
ggplot(hospital_infections, aes(x=difference)) +
  geom_boxplot()

# Hypothesis Test -----------------------------------------
t.test(hospital_infections$difference, 
       mu = 0, 
       alternative = "greater",
       conf.level = 0.95)



# REE -----------------------------------------------------
# Load the ree data:
library(rio)
ree <- import("https://byuistats.github.io/M221R/Data/ree.xlsx")

# Compute Column of Differences
ree$difference <- ree$stressful - ree$silence

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(ree$difference)

# Graphical Summaries -------------------------------------
## Using base R
hist(ree$difference)
boxplot(ree$difference, horizontal = TRUE)

## Using ggplot
ggplot(ree, aes(x=difference)) +
  geom_histogram()
ggplot(ree, aes(x=difference)) +
  geom_boxplot()

# Hypothesis Test -----------------------------------------
t.test(ree$difference, 
       mu = 0, 
       alternative = "greater",
       conf.level = 0.95)



# Flight Costs --------------------------------------------
# Load the direct_flight_costs data:
library(rio)
flight_costs <- import("https://byuistats.github.io/M221R/Data/direct_flight_costs.xlsx")

# Compute Column of Differences
flight_costs$difference <- 
  flight_costs$fourteen_days - flight_costs$ninety_days

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(flight_costs$difference)

# Graphical Summaries -------------------------------------
## Using base R
hist(flight_costs$difference)
boxplot(flight_costs$difference, horizontal = TRUE)

## Using ggplot
ggplot(flight_costs, aes(x=difference)) +
  geom_histogram()
ggplot(flight_costs, aes(x=difference)) +
  geom_boxplot()

# Hypothesis Test -----------------------------------------
t.test(flight_costs$difference, 
       mu = 0, 
       alternative = "two.sided",
       conf.level = 0.95)



# Confidence Intervals ==============================================



# Pine Beetles --------------------------------------------
# Load the pine_beetle data:
library(rio)
pine_beetle <- import("https://byuistats.github.io/M221R/Data/pine_beetle.xlsx")

# Compute Column of Differences
pine_beetle$difference <- pine_beetle$after - pine_beetle$before

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(pine_beetle$difference)

# Graphical Summaries -------------------------------------
## Using base R
hist(pine_beetle$difference)
boxplot(pine_beetle$difference, horizontal=TRUE)

## Using ggplot
ggplot(pine_beetle, aes(x=difference)) +
  geom_histogram()
ggplot(pine_beetle, aes(x=difference)) +
  geom_boxplot()

# Confidence Interval -------------------------------------
t.test(pine_beetle$difference, conf.level = 0.95)



# Sleep-Inducing Drugs ------------------------------------
# Load the sleep_drug data:
library(rio)
sleep <- import("https://byuistats.github.io/M221R/Data/sleep_drug.xlsx")

# Compute Column of Differences
sleep$difference = sleep$treatment - sleep$control

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(sleep$difference)

# Graphical Summaries -------------------------------------
## Using base R
hist(sleep$difference) 
boxplot(sleep$difference, horizontal=TRUE)

## Using ggplot
ggplot(sleep, aes(x=difference)) +
  geom_histogram()
ggplot(sleep, aes(x=difference)) +
  geom_boxplot()

# Confidence Interval -------------------------------------
t.test(sleep$difference, conf.level = 0.90)