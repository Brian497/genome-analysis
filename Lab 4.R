
#Exercise 1
library(tidyverse)
SNPs<- read.table("23andMe_complete.txt", header = TRUE, sep = "\t")
library(ggplot2)
ggplot(data = SNPs) + 
  geom_bar(mapping = aes(x = chromosome), fill = "blue") + ggtitle("23&ME") 

#Exercise 2
B<-ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill = genotype))
B
B + ggtitle("23&ME")+ ylab("genotype count")+xlab("# of chromosomes")
mycolors <- c("AA"="red","AC"="red","AG"="red","AT"="red","CC"="red","CG"="red","CT"="red","GG"="red","GT"="red","TT"="red","A"="green","C"="green","G"="green","T"="green","D"="black","DD"="black","I"="black","II"="black", "DI"="black","--"="purple")
B + scale_fill_manual(values=c(mycolors))

#Exercise 3
library(plotly)
library(DT)


#Exercise 4
C<-ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill= genotype), position = "dodge") + facet_wrap(~genotype, ncol = 3, nrow = 15, scales = "fixed") +
  theme(axis.text = element_text(size = 3),) + 
  theme(axis.text = element_text(size = 5))
C
C + ggtitle("23&ME") + ylab("genotype count")+xlab("# of chromosomes")


#Exercise 5
ggplot(data = SNPs) + geom_bar(mapping = aes(x = chromosome, fill= genotype), position = "dodge") + facet_wrap(~genotype, ncol = 3, nrow = 15, scales = "fixed") +
  theme(axis.text = element_text(size = 3),) + 
  theme(axis.text = element_text(size = 5))
library(plotly)
ggplotly (C + ggtitle("23&ME") + ylab("genotype count")+xlab("# of chromosomes"))

#Exercise 6
library(DT)
R <-  subset(SNPs, chromosome == "Y")
datatable(R)

