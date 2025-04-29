# OBJETIVO: trabalhar com bases de dados

# COMO?
# utilizando data frames

# Definir area de trabalho
setwd("~/Área de Trabalho/Minhas Coisas/AulaLinguagemR")

# Importando base de dados
df <- read.csv("DadosDeTeste.csv")

# Analisando um data frame
View(df)
# Tipos de dados
str(df)
summary(df)

# Selecionando variaveis
df
df[2]
df$Email

col1 <- df[1]
col2 <- df$Data.de.Cadastro
col2

class(df$Email)
class(col2)
class(col1)

# Modificando o DF
# Excluindo variavel

# Excluido variavel
df$Estado <- NULL

# Alterando o tipo da variavel dentro do df
df$ID
summary(df$ID)
df$ID <- as.factor(df$ID)
df$ID
summary(df$ID)

# Criando uma nova variavel dentro do df

df$Nova <- "a"
class(df$Nova)
df$Nova <- c(2, 5 ,10)
df$Nova <- c(2, 5 ,10, NA, NA)
df$Nova <- NULL
df$Nova <- NA
df$Nova[1:3] <- c(2, 5, 10)
class(df$Nova)



















