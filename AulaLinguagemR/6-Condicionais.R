# OBJETIVO: condicionar ações

# COMO?
# condicional IF, loop FOR e loop WHILE

if (5 == 5) 6 + 6

# se nao
if (5 + 5) 6 + 6 else "condição não atendida"

# melhores praticas
if

if (5 == 5) {
  6 + 6
} else {
  "Condição não atendida"
}

# exemplo

idades <- c(25, 30)
nomes <- c("João", "Caina")
df <- data.frame(nomes, idades)

View(df)

if (df$idades[df$nomes == "João"] > df$idades[df$nomes == "Caina"]){
  "Mais velho: João"
} else {
  "Mais velho: Caina"
}

idades <- c(25, 30, 24, 29, 31, 12)
nomes <- c("João", "Caina", "Maria", "Leo", "Lia", "Enzo")
df <- data.frame(nomes, idades)

# para cada posição faça sso
for (i in idades) {
  print(i)
}

for

# exemplo
v = 0

for (i in df$idades) {
  if (i > v) { v <- i}
}

df$nomes[df$idades == v]

# enquanto é verdade faça isso
x <- 0
while (x < 10) {
  print(x)
  x <- x+1
}

while

# exemplo - não permitir que as somas das dades seja maor que 100
y <- 0
x <- 0
cont <- 0
idades100 <- 0

while (y < 100) {
  cont <- cont + 1
  idades100[cont] <- idades[cont]
  x <- x + idades[cont]
  y <- x + idades[cont + 1]
}

# +idades[cont + 1]
idades
idades100
sum(idades100)














