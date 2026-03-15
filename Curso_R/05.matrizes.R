
# O que sao matrizes? -----------------------------------------------------

# Sao uma coleçao de elementos do mesmo tipo e bidemensionais.



# Criaçao de Matrizes -----------------------------------------------------

matriz <- matrix(1:9, nrow = 3, byrow = TRUE)



# Como nomear matrizes? ---------------------------------------------------

vendas_joao <- c(12, 30, 50)
vendas_maria <- c(45, 24, 70)
vendas_mariana <- c(23, 12, 30)
vendas <- c(vendas_joao, vendas_maria, vendas_mariana)

vendedores <- c("joao", "maria", "mariana")
dias <- c("SEG", "TER", "QUA")
matriz_vendas <- matrix(vendas, nrow = 3, byrow = TRUE) # Para colocar por ordem
#                                                         de coluna
rownames(matriz_vendas) <- vendedores # nomear linhas
colnames(matriz_vendas) <- dias # nomear colunas

# Outra maneira, mais simples de nomear
matriz_vendas <- matrix(vendas, nrow = 3, byrow = TRUE, dimnames = list(vendedores, dias))



# Acessando Elementos de uma Matriz ---------------------------------------

matriz_vendas[1,1] # Primeiro a linha, segundo a coluna
matriz_vendas["maria", "QUA"]

# Acessar recortes de uma matriz
matriz_vendas[2:3, 3] # Pegamos so as vendas das meninas, e so de QUA



# Manipulaçao de Matrizes -------------------------------------------------

# Adicionar linhas
vendas_henrique <- c(14,23, 34)
matriz_vendas <- rbind(matriz_vendas,"henrique" = vendas_henrique) # Essa funçao junta

matriz_vendas <- matriz_vendas[-4, ] # Assim elimanamos uma linha

# Adicionar colunas
tot_vendas <- rowsum(matriz_vendas) # Fazendo o total de cada coluna
media_vendas <- rowMeans(matriz_vendas) # Fazendo a media

matriz_vendas <- cbind(matriz_vendas, "Total" = tot_vendas, "Media" = media_vendas)

# Resumo estatistico
summary(matriz_vendas)



# Desafio -----------------------------------------------------------------

# ENUNCIADO:

# Os 4 grandes clubes do RJ - Flamengo, Fluminense, Vasco e Botafogo - disputaram
# 11 rodadas na fase de liga do Campeonato. Durante essa fase, cada time marcou
# uma quantidade especifica de gols, como indica o vetor abaixo:

gols <- c(
  1,1,1,5,2,2,5,0,1,2,5, # Flamengo
  0,0,1,3,0,1,1,2,0,2,3, # Fluminense
  1,0,1,2,4,1,2,1,0,0,1, # Vasco
  1,2,1,1,2,2,1,0,0,1,0  # Botafogo
)

# Seu desafio é:
# Criar uma matriz 4x11 com os gols de cada time por rodada.
# Nomear corretamente as linhas e colunas.
# Apos criar responda:
# Qual time marcou o maior numero de gols nessa fase?

times <- c("Flamengo", "Fluminense", "Vasco", "Botafogo")
jogos <- c("1°","2°","3°","4°","5°","6°","7°","8°","9°","10°","11°")
resultado <- matrix(gols, nrow = 4, byrow = TRUE, dimnames = list(times, jogos))

tot_gols <- rowSums(resultado)

resultado <- cbind(resultado, "Total" = tot_gols)

time_mais_gols <- names(which.max(tot_gols))

cat("O time que mais fez goles foi o", time_mais_gols)
