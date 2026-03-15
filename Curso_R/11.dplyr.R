
# Instalaçao e Carregamento dos Pacotes -----------------------------------

install.packages("dplyr")
install.packages("nycflights13")

library(dplyr)
library(nycflights13)



# Conhecendo os dados -----------------------------------------------------

View(flights)
?flights



# Manipulaçao de dados ----------------------------------------------------

# Com o select criamos um novo dataframe com as colunas que queremos de um 
# dataframe escolhido
voos1 <- select(flights, month, day, flight, carrier, distance, air_time)

# Serve para filtrar um dataframe, neste caso, so vai aparecer voos com a
# companhia area AA e no mes de dezembro
voos2 <- filter(voos1, carrier == "AA" & month == 12)
voos3 <- filter(voos1, carrier == "AA" & month == 12, day == 24)

# Usando o operador pipe %>% (ctrl + shift + m)
voos_df <- flights %>% 
  select(month, day, flight, carrier, distance, air_time) %>% # Seleciona colunas especificas
  filter(carrier == "AA" & month == 12 & day == 25) %>% # Filtra as linhas baseado em condiçoes
  mutate(speed = distance/air_time * 60) %>%  # Cria novas colunas
  arrange(desc(speed)) # Ordenar , desc - por ordem crescente

atraso_df <- flights %>% 
  group_by(carrier) %>%  # Agrupa os dados
  summarise(atraso_medio_chegada = mean(arr_delay, na.rm = TRUE)) %>%  # Resume os dados
  rename(transportadora = carrier) # Renomeia colunas



# Desafio -----------------------------------------------------------------

# ENUNCIADO:
# Voce acaba de ser contratado por uma startup que esta desenvolvendo um app
# para ajudar passageiros a escolherem o aeroporto com a melhor pontualidade
# em NYC. Sua missao é descobrir qual dos 3 aeroportos de origem (JFK, LGA e EWR)
# apresenta os menores atrasos na partida.
# O CEO quer um resumo que contenha o numero total de voos e a média dos atrasos
# na partida para cada aeroporto.

# Seu desafio é:
# - Agrupar os dados por aeroporto.
# - Para cada aeroporto, calcular o total de voos e a média do atraso na partida,
# ignorando os valores ausentes.
# Ordenar os dados em ordem crescente.

resumo_voos_df <- flights %>% 
  group_by(origin) %>% 
  summarise(total_voos = n(), atraso_medio_partida = mean(dep_delay, na.rm = TRUE)) %>% 
  arrange(atraso_medio_partida) %>% 
  rename(origem = origin)

