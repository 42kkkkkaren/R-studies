#Dúvidas
#Exercício 1: Com bins a informação não fica mais pobre? Você recebe menos acurácia.


#1)
install.package{"ggplot2"}
library(ggplot2)
data(USArrests)
mydata = USArrests
dim(mydata)
#[1] 50  4
names(mydata)
#[1] "Murder"   "Assault"  "UrbanPop" "Rape" 

#Histograms
ghMurder = ggplot(data = mydata) +
  geom_histogram(mapping = aes(x = Murder), bins = 10, fill = 'pink', color ='black')
ghMurder

ghAssault = ggplot(data = mydata) +
  geom_histogram(mapping = aes(x = Assault), bins = 10, fill = 'purple', color ='black')
ghAssault

ghUrbanPop = ggplot(data = mydata) +
  geom_histogram(mapping = aes(x = UrbanPop), bins = 10, fill = 'yellow', color ='black')
ghUrbanPop

ghRape = ggplot(data = mydata) +
  geom_histogram(mapping = aes(x = Rape), bins = 10, fill = 'gray', color ='black')
ghRape

#Box-Plots
gbpMurder = ggplot(data = mydata) +
  geom_boxplot(mapping = aes(x = 1, y = Murder), fill = 'pink', color = 'black')
gbpMurder

gbpAssault = ggplot(data = mydata) +
  geom_boxplot(mapping = aes(x = 1, y = Assault), fill = 'purple', color = 'black')
gbpAssault

gbpUrbanPop = ggplot(data = mydata) +
  geom_boxplot(mapping = aes(x = 1, y = UrbanPop), fill = 'yellow', color = 'black')
gbpUrbanPop

gbpRape = ggplot(data = mydata) +
  geom_boxplot(mapping = aes(x = 1, y = Rape), fill = 'gray', color = 'black')
gbpRape