# OBJETIVO: emtemder como a linguagem R organiza os dados

# COMO?
# exemplos

# Armazenamento numérico

salario <- 3450.89
horas <- 220

sh <- salario/horas
shi <- as.integer(salario/horas)
shi * 5
shr <- round(salario/horas)

numeros1 <- salario + horas
numeros1

numeros2 <- c(salario, horas)
numeros2

# Armazenamento de caracteres

nome_1 <- "Eduardo Abreu"
nome_2 <- "Amanda Lopes"
idade <- "25"

idade + 5

nomes <- nome_1 + nome_2
nomes <- c(nome_1, nome_2)

nomes
nomes[1]
nomes[2]

nome_1 == nome_2
nome_1 == nome_1

# Armazenamento de fatores

cargaHoraria <- c(220, 220, 150, 100, 100)
summary(cargaHoraria)

cargaHoraria <- as.factor(cargaHoraria)
summary(cargaHoraria)

cargaHoraria <- as.factor(c(220, 220, 150, 100, 100))
summary(cargaHoraria)
mode(cargaHoraria)
class(cargaHoraria)

# Armazenamento logico

L1 <- salario > horas
L1

L2 <- salario < horas
L2

logico <- TRUE
logico1 <- "TRUE"
logico2 <- c(1, TRUE, 3)

# Vetores - Estrutura básica de dados
# todos as variaveis criadas até agora são vetores

# vetor de caracteres
is.vector(nomes)
mode(nomes)

# vetor numerico
is.vector(horas)
mode(horas)

# vetor logico
is.vector(L1)
mode(L1)

# Lista - vetor com tipos de dados diferentes
a <- c(1, 2, 3, 4, 5)
b <- c(1, "2", 3, 4, 5)
a
b

is.list(a)
is.list(b)

is.vector(a)
is.vector(b)

is.numeric(a)
is.numeric(b)
is.character(b)
mode(b)

str(b)

b <- list(10, "2", 8)
is.list(b)
is.vector(b)
is.numeric(b)
is.character(b)
mode(b)

str(b)

b + 2
b[[1]] + 2
b[[2]] + 2
mode(b[[2]])
b[[3]] + 2

e <- list(c(10, 6, 51, 5), "2", 8)
str(e)
e[[1]][1]

# Matrizes - Duas Dimensões um tipo de dado

m <- matrix(1:9, nrow = 3)
m
mode(m)
class(m)

# m[linha, coluna]
m[1, 3]
m[1, 1] <- "a"

mode(m)
m
class(m)






















