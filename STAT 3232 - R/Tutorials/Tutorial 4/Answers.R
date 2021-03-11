# Question 1
drug<-c(15,10,13,7,9,8,21,9,14,8)
placebo<-c(15,14,12,8,14,7,16,10,15,12)

shapiro.test(drug) 
var.test(drug,placebo)
t.test(drug,placebo,alternative="less",v.equal=T)

# Question 2
premiumGas<-c(19,22,24,24,25,25,26,26,28,32)
regularGas<-c(16,20,21,22,23,22,27,25,27,28)

diff<-premiumGas-regularGas
print(diff)

shapiro.test(diff)

t.test(premiumGas,regularGas, alternative="greater",paired=T)

# Question 3
salmonellaLevels<-c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392, 0.418)
t.test(salmonellaLevels,alternative="greater",mu=0.3)

# Question 4
girls<-c(19, 18, 9, 17, 8, 7, 16, 19, 20, 9, 11, 18)
boys<-c(16, 5, 15, 2, 14, 15, 4, 7, 15, 6, 7, 14)

shapiro.test(girls)

wilcox.test(girls,boys)

# Question 5
rabbitsBefore<-c(190.1,190.9,172.7,213.0,231.4,196.9,172.2,285.5,225.2,113.7)
rabbitsAfter<-c(392.9,313.2,345.1,393.0,434.0,227.9,422.0,383.9,392.3,352.2)

shapiro.test(rabbitsBefore)
wilcox.test(rabbitsBefore, rabbitsAfter,paired=T)
