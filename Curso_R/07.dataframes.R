
# O que é um dataframe? ---------------------------------------------------

# é uma estrutura de dados bidimensional que armazena colunas de diferentes tipos.
# Cada linha uma observaçao e cada coluna uma variavel.



# Conhecendo o DataFrame --------------------------------------------------

# O R ja vem com alguns DataFrames incluidos na base. Vamos usar o "mtcars".

View(mtcars)
?mtcars

#obs sao linhas, variaveis sao colunas

#Funçoes uteis
head(mtcars) #Pega as 6 primeiras linhas do dataframe
tail(mtcars) #Pega as 6 ultimas linhas
str(mtcars) #Pega a estrutura de todo dataframe
names(mtcars) #Diz todos os nomes das variaveis
summary(mtcars)



# Criaçao de um DataFrame -------------------------------------------------

alunos <- c("Ana", "Paula", "Jean", "Maria", "Mario")
idade <- c(17, 18, 18, 16, 17)
genero <- c("F", "F", "M", "F", "M") 
aprovado <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

alunos_df <- data.frame(alunos, idade, genero, aprovado)
View(alunos_df)



# Acessando elementos de um DataFrame -------------------------------------

alunos_df[, 2] # Linhas lado esquerdo da virgula, colunas lado direito
alunos_df[4:5,] # Ultimas duas linhas, todas as colunas
alunos_df$genero # Acessando colunas com o $

# Selecionar alunos aprovados

subset(alunos_df, aprovado == TRUE) # Depois da virgula, colocamos a condiçao



# Adicionando nova coluna -------------------------------------------------

nota <- c(9.0, 4.6, 10.0, 6.3, 7.5)
alunos_df$nota <- nota
# Para apagar a coluna: alunos_df$nota <- NULL



# Desafio -----------------------------------------------------------------

# ENUNCIADO

# Voce recebeu os dados de vendas da ultima semana de uma pequena loja:

produto <- c("Camiseta", "Calça", "Tenis", "Boné", "Mochila")
preço <- c(50, 120, 250, 35, 180)
quantidade <- c(20, 10, 5, 15, 7)

# Seu desafio é:

# Transformar os dados em um data frame.
# Criar uma nova coluna chamada total_vendido, que seja o resultado da coluna
# preço * quantidade para cada produto.
# Descobrir:
# Qual produto gerou mais receita?
# Qual produto teve a maior quantidade vendida?
# Qual foi o total arrecadado pela loja com todos os produtos?

loja <- data.frame(produto, preço, quantidade)
total_vendido <- preço * quantidade
loja$total <- total_vendido
resumo_loja <- summary(loja)
produto_mais_receita <- loja$produto[which.max(loja$total)]
produto_mais_vendido <- loja$produto[which.max(loja$quantidade)]
total <- sum(loja$total)

cat("O produto que gerou mais receita foi:", produto_mais_receita)
cat("O produto que teve a maior quantidade vendida foi:", produto_mais_vendido)
cat("O total arrecadado foi:", total)

