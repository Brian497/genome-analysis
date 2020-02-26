ggplot2::mpg
ggplot(data = mpg) + 
geom_point(mapping = aes(x = displ, y = hwy))
ggplot(data = mpg)

library(ggplot2)

#Example 1
class(SNPs)

#Example 2
typeof(SNPs)

#Example 3
str(SNPs)

#Example 4 
summary(SNPs)

#Example 5
class(SNPs$genotype)

#Example 6 
typeof(SNPs$genotype)

#Example7
str(SNPs$genotype)

#Example 8
summary(SNPs$genotype)

#Example 9
summary(SNPs$position)

#Example 10
summary(SNPs$chromomsome)

#Example 11
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
summary(SNPs$chromosome)

#Exercise 1
library(tidyverse)
SNPs<- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")

ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = chromosome))

#Exercise 2
SNPs$chromosome = ordered(SNPs$chromosome, levels=c(seq(1, 22), "X", "Y", "MT"))
bar <- ggplot(data = SNPs) + geom_bar(mapping = aes (x=chromosome)) 
bar

#Exercise 3
ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill = genotype))

#Exercise 4
ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill= genotype), position = "fill")

#Exercise 5
ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill= genotype), position = "dodge")

#Exercsie 6
ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill= genotype), position = "fill") + facet_wrap(~genotype)

