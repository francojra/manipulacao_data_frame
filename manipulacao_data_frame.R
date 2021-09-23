
# Como criar nova coluna em um data.frame --------------------------------------------------------------------------------------------------

### Criando um data.frame

Turma_1 <- c(9, 7, 5, 8, 10)
Turma_2 <- c(8, 8, 9, 3, 6)

dados <- data.frame(Turma_1, Turma_2)
dados

### Criando nova coluna "Condicao" com dados associados a outras colunas da sua tabela:

CondicaoT1 <- dados$Turma_1 >= '7'
dados[CondicaoT1, "Condiçao T1"] <- "Aprovado"

CondicaoT2 <- dados$Turma_2 < '7'
dados[CondicaoT2, "Condiçao T2"] <- "Reprovado"

dados
