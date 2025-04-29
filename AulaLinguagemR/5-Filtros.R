# OBJETIVO: acessar, extrair e modificar dados em variaveis

# COMO?
# utilizando recursos basicos

# criando uma variavel
vogais <- c("a", "e", "i", "o", "u")

# acessar o conteudo que esta na posicao 3
vogais[3]

# acessar tudo menos a posicao 3
vogais[-3]

# dados entre a posicao 3 e 5
vogais[3:5]

# dados considerando o comprimento
length(vogais)
vogais[3:length(vogais)]
vogais[(length(vogais)-2):length(vogais)]

# dados considerando outras variaveis
a <- 3
b <- 5

vogais[a:b]

# acessar atraves de condicoes 
vogais[vogais == "e"]
vogais[vogais != "e"]

a <- c(1, 2, 3, 4, 5)
a[a > 2]
a[a >= 2]

# trabalhando com data frames

# Definir area de trabalho
setwd("C:/Users/Pedro/Desktop/Minhas Coisas/AulaLinguagemR")
# Importando base de dados
df <- read.csv("DadosDeTeste.csv")

df[1]
df[1,] # todas as colunas da primeira linha 
df[,1] # todas as linhas da primeira coluna
# df[linha, coluna]

df[1:6]
df[-4]

df[1,1]
df[1,1:2]
df[1, -4]

df[1:3, 1:3]
df[-1, -4]

# modificando o df
df <- df[c(-3, -4)]

# filtrando as variaveis
df[1, 1]
df$Nome[1]
df$Data.de.Cadastro[2:4]
df[df$Estado == "SP",]

# modificando o df
df <- df[df$Estado == "SP",]

# df x df1
df1 <- read.csv("DadosDeTeste.csv")
View(df1)
View(df)


































