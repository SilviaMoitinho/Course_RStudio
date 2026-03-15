
# O que sao Fatores? ------------------------------------------------------

# Sao estruturas de dados usadas para representar variaveis categoricas.



# Creaçao de Fatores Nominais ---------------------------------------------

generos <- c("masculino", "feminino", "feminino", "masculino", "feminino")
summary(generos)

generos_fator <-  factor(generos)
summary((generos_fator))



# Criaçao de Fatores Ordinais ---------------------------------------------

avaliaçao <- c("bom", "ruim", "medio", "medio", "bom")
summary(avaliaçao)

avaliaçao_fator <- factor(avaliaçao, order = TRUE, levels = c("ruim", "medio", "bom"))
summary(avaliaçao_fator)



# Desafio -----------------------------------------------------------------

# ENUNCIADO:

# A equipe de atendimento de uma empresa coletou 100 avaliaçoes de clientes sobre
# a experiencia com os serviços oferecidos. As respostas possiveis eram:

# Pessimo, Ruim, Regular, Bom, Excelente

# As avaliaçoes foram registradas no vetor avaliaçoes_clientes, ja criado para
# voce:

set.seed(42)
avaliaçoes_clientes <- sample(
  c("pessimo", "ruim", "regular", "bom", "excelente"),
  size = 100,
  replace = TRUE
)

# Seu desafio é:
# - Transformar o vetor avaliaçoes_clientes em um fator ordinal, com a seguinte
# ordem de niveis: "pessimo" < "ruim" < "bom" < "excelente"
# - Gerar um resumo com a quantidade de respostas por categoria
# - Descobrir qual foi o nivel de satisfaçao mais comum


avaliaçoes_clientess_fator <- factor(
  avaliaçoes_clientes, ordered = TRUE, 
  levels = c("pessimo", "ruim", "regular", "bom", "excelente"))

avaliaçao_resumo <- summary(avaliaçoes_clientess_fator)
avaliaçao_mais_comum <- names(which.max(avaliaçao_resumo))
cat ("A avaliaçao mais comum foi", avaliaçao_mais_comum)
