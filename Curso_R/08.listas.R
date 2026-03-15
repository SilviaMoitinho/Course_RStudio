
# O que sao listas? -------------------------------------------------------

# Sao estruturas de dados que podem armazenar elementos de diferentes tipos
# e tamanhos, inclusive outros vetores, matrizes, data frames e até outras listas.



# Criaçao de listas -------------------------------------------------------

vetor <- seq(from = 0, to = 100, by = 10)
matriz <- matrix(1:9, nrow = 3, byrow = TRUE)
df <- mtcars[1:10,]

lista <- list(Vetor = vetor, Matriz = matriz, Df = df)



# Acessando elementos de uma lista ----------------------------------------

lista[["Vetor"]][5] # Lista vetor, a posiçao 5
lista$Vetor[3]

lista[["Matriz"]][9]
lista$Matriz[2,2] # Elemento da segunda linha, na segunda coluna

lista[["Df"]][8:10, ] # Ultimas 3 linhas, todas as colunas
lista$Df[8:10,]



# Manipulaçao de listas ---------------------------------------------------

# Adicionando elementos
lista$Fator <- factor(sample(c("Azul", "Vermelho", "Verde"), size = 15, 
              replace = TRUE))

# Removendo elementos
lista$Fator <- NULL



# Desafio -----------------------------------------------------------------

# ENUNCIADO

# Seu desafio é:
# Criar uma lista chamada minha_lista com os seguintes elementos:
# - Seu nome
# - Sua idade
# - Sua cidade
# - Um vetor com 3 linguagens de programaçao que voce conhece
# Adicionar um novo elemento chamado hobbie com um valor à sua escolha
# Remover o elemento hobbie da lista
# Exibir a lista final no console

meus_dados <- c("Silvia", 26, "França")
linguagens_programaçao <- c("Python", "R", "Java")

minha_lista <- list(Meus_dados = meus_dados, Linguagens = linguagens_programaçao)

hobbie <- c("Ler", "Pintar")
minha_lista$Hobbie <- hobbie
minha_lista$Hobbie <- NULL
print(minha_lista)



# Anotaçoes:
# ALT + SHIFT + K == mostra todos os comandos