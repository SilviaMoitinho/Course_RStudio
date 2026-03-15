
# O que sao vetores? ------------------------------------------------------
# Sao estruturas de dados udimensionais com elementos do mesmo tipo


# Criaçao de vetores ------------------------------------------------------

vet_num <- c(1,2,3,4,5)
seq_1 <- 1:5
seq_2 <- seq(from = 1, to = 100, by = 2) # O by é pulando de..

vet_chat <- c("a", "b", "c")

vet_log <- c(TRUE, FALSE)


# Como nomear vetores? ----------------------------------------------------

vendas_joao <- c(12, 30, 50)
vendas_maria <- c(45, 24, 70)

dias <- c("SEG", "TER", "Qua") # Quando formos usar o mesmo codigo varias vezes 
#                               melhor automizar, colocando numa variavel.
names(vendas_joao) <- dias
names(vendas_maria) <- dias


# Operaçoes com vetores ---------------------------------------------------

vendas_diarias <- vendas_joao + vendas_maria # vai somar cada elemento de um com
#                                               o outro ex: 12+45, 30+24 ...
# Total e média de cada um

tot_joao <- sum(vendas_joao)
tot_maria <- sum(vendas_maria)
media_joao <- mean(vendas_joao)
media_maria <- mean(vendas_maria)

#Resumo estatistico
summary(vendas_joao)
summary(vendas_maria)

#Comparando vetores
vendas_joao > vendas_maria # Retorna um valor logico, onde mostra quando que 
#                           se for maior True senao false.


# Acessando elementos de um vetor -----------------------------------------

vendas_joao[1] # Primeiro valor
vendas_maria["TER"]


# Manipulaçao de vetores --------------------------------------------------

vendas_joao["SEG"] <- 25 # Trocar o valor
vendas_joao["QUI"] <- 16 # Adicionar valores


# Desafio -----------------------------------------------------------------

# ENUNCIADO:

# Voce trabalha em uma loja de eletronicos e precisa analisar o estoque de 5
# produtos. Cada produto tem uma quantidade disponivel, e seu gerente pediu um
# relatorio simples para avaliar quais produtos precisam de uma reposiçao de 
# estoque. O minimo é de 15 unidades por produto.

# Seu desafio é:
# Criar os vetores necessarios
# Criar a variavel com o limite minimo
# Nomear os elementos do vetor
# Descobrir quantos itens ha no estoque no total
# Identificar qual produto precisa de reposiçao

# Dados do estoque:
# Notebook: 12 unidades
# Smartphone: 16 unidades
# Tablet: 28 unidades
# Fone de ouvido: 8 unidades
# Carregador: 18 unidades

estoque <- c(12, 16, 28, 8, 18)

min <- 15

names(estoque) <- c("Notebook", "Smartphone", "Tablet", "Fone", "Carregador")

tot_estoque <- sum(estoque)

estoque < 15
