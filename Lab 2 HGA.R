#Example 1
SNPs<- c("AA","AA","GG","AG","AG","AA","AG","AA","AA","AA","AG")
SNPs

#Exercise 1
x<- c(1,3,6,9,12)
y<- c(1,0,1,0,1)
x-y
x+y
x*y
x/y

#Example 2
x = 1
>str(x)
#Exercise 2
a<- c(0,1,2,3)
b<- c("aa","bb","cc","dd")
c<- c("aa",1,"bb",2)
str(a)
str(b)
str(c)

#Example 3
Day1<- c(2,4,6,8)
Day2<- c(3,6,9,12)
Dya3<- c(1,4,9,16)
B<- cbind(Day1,Day2,Day3)
B
#Exercise 3
genotype1<- c("AA","AA","AG","GG","GG")
genotype2<- c("AA","AA","GG","GG","GG")
A<- cbind(genotype1,genotype2)
table(genotype1)
table(genotype2)

#Example 4
Gene1<- c(2,4,6,8)
Gene2<- c(3,6,9,12)
Gene3<- c(1,4,9,16)
Gene <- c("Day 1", "Day 2", "Day 3", "Day 4")
RNAseq<- data.frame(Gene1, Gene2, Gene3, row.names = Gene)
RNAseq
RNAseq$Gene3
plot(RNAseq$Gene1,RNAseq$Gene3)
#Exercsie 4 
Treatment1<- c(0,1,2,3,4)
Treatment2<- c(0,2,4,6,8)
Treatment3<- c(0,3,6,9,12)
time<- c(0,2,4,6,8)
Time<- c("min0","min2","min4","min6","min8")
Data<- data.frame(Treatment1, Treatment2, Treatment3, row.names = Time)
Data
Data$Treatment3
plot(Treatment3, time)

#Example 5
SNP_table <- read.table("23andMe_example_cat25.txt", header = TRUE, sep = "\t")
SNP_table
#Exercise5
SNP_table <- read.table("23andMe_example_cat25.txt", header = TRUE, sep = "\t")
SNP_table
#Chromosome's object type is a name
#The above truncated file is more detailed 

#Example 6
table(SNPs_cat)
#Exercsie 6 
table(SNP_table$genotype)

#Example 7
SNP_table_AG <- subset(SNP_table, genotype == 'AG') 
SNP_table_AG
#Exercise 7
SNP_table_A<- subset(SNP_table, genotype == 'A')
SNP_table_A

