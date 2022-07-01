##Exercício 1
21+21
##[1] 42
84/2
##[1] 42
7*6
##[1] 42
2+(2*20)
##[1] 42
84/(1*2)
##[1] 42
42-21+(7*3)
##[1] 42

##Exercício 2
install.packages("Brasil")
library(Brasil)
?SP
help.start()

##Exercício 3
```{r animals}
summary(animals)
```
knit button (Ctrl + shift + K)
render()

##Exercício 4
c() Costuma ser utilizado para valores numéricos, como int/double.
c("") Costuma ser utilizado para dados como string/char

vetorNumerico <- c(1:13)
print(vetorNumerico)
##[1]  1  2  3  4  5  6  7  8  9 10 11 12 13

vetorNumerico <- c(Beeblebrox)
##Error: object 'Beeblebrox' not found
print(vetorNumerico)
##[1]  1  2  3  4  5  6  7  8  9 10 11 12 13

vetorString <- c("Beeblebrox")
print(vetorString)
##[1] "Beeblebrox"

##Exercício 5
vetor <- c(1:1000)
vetor <- seq(2,1000,2)

##Exercício 6
numeroOuro <- (1+5^(1/2))/2
##[1] 1.618034

##Exercício 7
1/0
##[1] Inf
-1/0
##[1] -Inf

##Exercício 8
NaN 0/0
   O NaN (not a number) representa indefinições matemáticas.
NULL pairlist()
   O NULL (nulo) representa a ausência de um objeto.
NA vetor <- c(2, 4, 6)
   vetor[5]
   O NA para o R nada mais é do que o valor faltante ou omisso da Estatística.
Inf 1/0
   O Inf (infinito) representa um número que o computador não consegue representar ou um limite matemático.

##Exercício 9
5 + 3 * 10 %/%3 == 15
##[1] FALSE
5 + (3 * 10) %/%3 == 15
##[1] TRUE
A expressão original retorna o valor referente à divisão inteira. (%% e %/% servem para realizar a divisão inteira dentro do R.)

##Exercício 10
for(i in 1:7){
  print(i^3)
}

##Exercício 11
getwd()
##[1] "C:/Users/karen/OneDrive/Documentos"
setwd("C:/Users/karen/OneDrive/Documentos/R Studies")
