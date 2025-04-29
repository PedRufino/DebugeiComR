# OBJETIVO: primeiro contato com a linguaguem R

# Criação de variaveis

a <- 10
a

b
b = 10
b
B

# Utilizamos <- na criação de variaveis e = nas atribuições de funções

c -> 10
20 -> c
c -> b

# Para padronizar sempre utilizaremos "variavel" <- "valor"

a <- 10
b <- 5

c <- a + b

a <- "Pedro"
b <- "Rufino"

c <- a + b

# Funções
# Fazem parte de um pacote
# Pacotes contem muitas funções e precisam estar instalados
# Não sendo um pacote padrão ele precisa ser chamado

c <- c(a, b)
c

# Help
?c

c <- c("Pedro", "Rufino")
c

a <- c(10, 20, 30)
a[1]

?summary
summary(a)
summary(c)

# Função de um pacote nao padrao
# DOC para libs: https://www.rdocumentation.org/
?str_c

install.packages("stringr")
library(stringr)

?str_c

nome <- "Pedro"
sobrenome <- "Rufino"

nome_completo <- str_c(nome, sobrenome)
nome_completo
nome_completo <- str_c(nome, " ", sobrenome)
nome_completo















