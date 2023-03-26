library(tidyverse)
library(mosaic)
library(pander)

#Graphing a Boxplot with several groups for ANOVA

ggplot(data=CaffeineAmt, mapping = aes(x=Cola, y=CaffeineAmt)) +
         geom_boxplot(fill=c("red","blue","blue","red"))+
                         labs(
                           x="Cola",
                           y="Amount of Caffeine",
                           title = "Amount of Caffeine by Cola"
                         )

#Getting Summary Statistics for different groups for ANOVA

pander(favstats(CaffeineAmt~Cola,data=CaffeineAmt))

#Getting a ANOVA table with the Test Statistic and P-value
cola.aov <- aov(CaffeineAmt~Cola,data=CaffeineAmt)
summary(cola.aov)

#Getting a QQ-plot to check for the normality requirements of ANOVA
plot(cola.aov,which=2)


