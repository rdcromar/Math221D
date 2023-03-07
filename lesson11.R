# ===================================================================
# Lesson 11: Inference for One Mean (Sigma Unknown)
# Sample R code
# MATH 221D
# Brigham Young University-Idaho
# ===================================================================



# Hypothesis Tests ==================================================



# Body Temperatures Example -------------------------------
# Load the body_temp data
library(rio)
body_temp <- import("https://byuistats.github.io/M221R/Data/body_temp.xlsx")

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(body_temp$temperature) 

# Graphical Summaries -------------------------------------
hist(body_temp$temperature)
boxplot(body_temp$temperature, horizontal=TRUE)

# Hypothesis Test -----------------------------------------
t.test(body_temp$temperature,    # Data
       mu = 98.6,                # Value from null hypothesis
       alternative="two.sided")  # Could be "two.sided", "greater" or "less"

t.test(body_temp$temperature, conf.level=0.99)

# Baby Boom Data ------------------------------------------
# Load the baby_boom data:
library(rio)
baby_boom <- import("https://byuistats.github.io/M221R/Data/baby_boom.xlsx")

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(baby_boom$weight) 

# Graphical Summaries -------------------------------------
hist(baby_boom$weight)
boxplot(baby_boom$weight, horizontal=TRUE)

# Hypothesis Test -----------------------------------------
t.test(baby_boom$weight, mu = 3373, alternative="two.sided")



# Confidence Intervals ==============================================



# BLEU Scores ---------------------------------------------
# Load the bleu scores data:
library(rio)
bleu <- import("https://byuistats.github.io/M221R/Data/bleu.xlsx")

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(bleu$score)

# Graphical Summaries -------------------------------------
hist(bleu$score)
boxplot(bleu$score, horizontal=TRUE)

# Confidence Interval -------------------------------------
t.test(bleu$score, conf.level=0.95)



# Euro Weights --------------------------------------------
# Load the euro weights data:
library(rio)
euro <- import("https://byuistats.github.io/M221R/Data/euro.xlsx")

# Numerical Summaries -------------------------------------
library(mosaic)
favstats(euro$weight)

# Graphical Summaries -------------------------------------
hist(euro$weight) 
boxplot(euro$weight, horizontal=TRUE)

# Confidence Interval -------------------------------------
t.test(euro$weight, conf.level=0.99)