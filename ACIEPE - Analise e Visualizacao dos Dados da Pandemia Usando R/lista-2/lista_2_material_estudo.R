#install.package{"ggplot2"}
library(ggplot2)
#carregar conjunto de dados USArrests
data(USArrests)
mydata = USArrests
#ver a dimens�o do banco de dados
dim(mydata)
head(mydata) #seis primeiras linhas
tail(mydata) #seis �ltimas linhas
summary(mydata) # sum�rio estat�stico do conjunto de dados
names(mydata) #nomes das vari�veis
row(mydata) #nomes dos estados norte-americanos
help(USArrests)

#Frequ�ncia de assassinatos por estado
g1 = ggplot(data = mydata) +
  geom_histogram(mapping = aes(x = Murder))
g1

#Gr�fico de densidade usando kernel gaussiano
g2 = ggplot(data = mydata) +
  geom_density(mapping = aes(x = Murder), kernel = 'gaussian')
g2

#Diagrama de caixa ou box-plot (quartis da distribui��o, onde podemos analisar a dispers�o da vari�vel)
g3 = ggplot(data = mydata) +
  geom_boxplot(mapping = aes(x = 1, y = Murder))
g3

#Violin-plot, que segue o mesmo princ�pio do box-plot, mas � uma combina��o deste com um gr�fico de densidade.
ggplot(data = mydata) +
  geom_violin(mapping = aes(x = 1, y = Murder))

#Colocar t�tulos, subt�tulos, etc nos gr�ficos.
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 10) +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Cores das barras, usando o comando fill dentro de geom_histogram
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 10, fill ='blue') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Cores nas bordas do gr�fico
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 10, fill ='blue', color='black') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Alterar o n�mero de barras usando o comando bins
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 4, fill ='blue', color='black') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Se usarmos o comando fill = rainbow, teremos as barras preenchidas com 4 cores do arco-�ris
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 4, fill =rainbow(4), color='black') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Personalizar o box-plot para assassinatos. Colour muda a cor do contorno e fill muda a cor do preenchimento
ggplot(data = USArrests) +
  geom_boxplot(mapping = aes(x = 1, y = Murder), color = 'red', fill = 'pink')

#Gr�fico de dispers�o a fim de verificar como o n�vel de assassinatos se relaciona com o tamanho da popula��o urbana
ggplot(mydata, aes(x = UrbanPop, y = Murder)) +
  geom_point(color='blue', size=4) +
  labs(y = "Assassinatos",
       x = "Popula��o Urbana",
       title = "Rela��o entre assassinatos e Popula��o Urbana") 