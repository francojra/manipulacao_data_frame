
# Como criar nova coluna em um data.frame --------------------------------------------------------------------------------------------------

### Criando dois data.frames

Notas_turma_1 <- c(9, 7, 5, 8, 10)
Alunos1 <- c("Joao", "Maria", "Augusto", "Pedro", "Paula")

dados <- data.frame(Notas_turma_1, Alunos1)
dados

Notas_turma_2 <- c(7, 4, 9, 8, 6)
Alunos2 <- c("Ana", "Gabriel", "Artur", "Valentina", "Vanessa")

dados1 <- data.frame(Notas_turma_2, Alunos2)
dados1

### Criando nova coluna "Condicao" com dados associados a outras colunas da sua tabela:

# Condição turma 1
Condicao_turma_1 <- dados$Notas_turma_1 >= '7'
dados[Condicao_turma_1, "Condicao_turma_1"] <- "Aprovado"
Condicao_turma_1 <- dados$Notas_turma_1 < '7'
dados[Condicao_turma_1, "Condicao_turma_1"] <- "Reprovado"

dados

# Condição turma 2
Condicao_turma_2 <- dados1$Notas_turma_2 >= '7'
dados1[Condicao_turma_2, "Condicao_turma_2"] <- "Aprovado"
Condicao_turma_2 <- dados1$Notas_turma_2 < '7'
dados1[Condicao_turma_2, "Condicao_turma_2"] <- "Reprovado"

dados1
