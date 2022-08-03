#install.package{"ggplot2"}
library(ggplot2)
#carregar conjunto de dados USArrests
data(USArrests)
mydata = USArrests
#ver a dimensão do banco de dados
dim(mydata)
head(mydata) #seis primeiras linhas
tail(mydata) #seis últimas linhas
summary(mydata) # sumário estatístico do conjunto de dados
names(mydata) #nomes das variáveis
row(mydata) #nomes dos estados norte-americanos
help(USArrests)

#Frequência de assassinatos por estado
g1 = ggplot(data = mydata) +
  geom_histogram(mapping = aes(x = Murder))
g1

#Gráfico de densidade usando kernel gaussiano
g2 = ggplot(data = mydata) +
  geom_density(mapping = aes(x = Murder), kernel = 'gaussian')
g2

#Diagrama de caixa ou box-plot (quartis da distribuição, onde podemos analisar a dispersão da variável)
g3 = ggplot(data = mydata) +
  geom_boxplot(mapping = aes(x = 1, y = Murder))
g3

#Violin-plot, que segue o mesmo princípio do box-plot, mas é uma combinação deste com um gráfico de densidade.
ggplot(data = mydata) +
  geom_violin(mapping = aes(x = 1, y = Murder))

#Colocar títulos, subtítulos, etc nos gráficos.
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

#Cores nas bordas do gráfico
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 10, fill ='blue', color='black') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Alterar o número de barras usando o comando bins
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 4, fill ='blue', color='black') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Se usarmos o comando fill = rainbow, teremos as barras preenchidas com 4 cores do arco-íris
ggplot(data = USArrests) +
  geom_histogram(mapping = aes(x = Assault), bins = 4, fill =rainbow(4), color='black') +
  labs(x = 'Assaltos para cada 100 mil habitantes',
       y = 'Frequencia',
       title = 'Assaltos em Estados Americanos')

#Personalizar o box-plot para assassinatos. Colour muda a cor do contorno e fill muda a cor do preenchimento
ggplot(data = USArrests) +
  geom_boxplot(mapping = aes(x = 1, y = Murder), color = 'red', fill = 'pink')

#Gráfico de dispersão a fim de verificar como o nível de assassinatos se relaciona com o tamanho da população urbana
ggplot(mydata, aes(x = UrbanPop, y = Murder)) +
  geom_point(color='blue', size=4) +
  labs(y = "Assassinatos",
       x = "População Urbana",
       title = "Relação entre assassinatos e População Urbana") 