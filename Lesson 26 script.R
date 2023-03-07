library(rio)
library(mosaic)
library(tidyverse)
surgery_law <- rio::import("https://byuistats.github.io/M221R/Data/surgery_lawsuits.xlsx")
body_temp <- rio::import("https://byuistats.github.io/BYUI_M221_Book/Data/BodyTemp.xlsx")

### Do Summary Statistics for One Variable
favstats(body_temp$BodyTemp)

### Do a histogram with one variable
ggplot(data=body_temp,mapping=aes(x=BodyTemp))+
  geom_histogram()

### Do a histogram with one variable with blue bins
ggplot(data=body_temp,mapping=aes(x=BodyTemp))+
  geom_histogram(fill="blue")

### Do a histogram with one variable with blue bins and labels
ggplot(data=body_temp,mapping=aes(x=BodyTemp))+
  geom_histogram(fill="blue")+
  labs(
    x="Human Body Temperature",
    y="Frequency",
    title = "The Distribution of Human Body Temperature"
  )

### Do a boxplot with one variable with blue boxplots and labels
ggplot(data=body_temp,mapping=aes(x=BodyTemp))+
  geom_boxplot(fill="blue")+
  labs(
    x="Human Body Temperature",
    title = "The Distribution of Human Body Temperature"
  )

### Do Summary Statistics for One Variable with More than One Variable
favstats(BodyTemp~Gender,data=body_temp)

### Do a boxplot with more than one group with blue and pink boxplots and labels
ggplot(data=body_temp,mapping=aes(y=BodyTemp,x=Gender))+
  geom_boxplot(fill=c("pink","blue"))+
  labs(
    x="Gender",
    y="Human Body Temperature",
    title = "The Distribution of Human Body Temperature"
  )
