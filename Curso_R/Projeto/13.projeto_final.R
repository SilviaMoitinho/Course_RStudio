
# Enunciado ---------------------------------------------------------------

# Porque as vendas da HashTech cairam?

# O cenario:
# A HashTec vende 3 produtos:
# - Placa de video
# - SSD
# - Mouse
# A empresa notou uma queda expressiva no faturamento e solicitou
# a sua ajuda para buscar uma soluçao para esse problema.

# Nosso Objetivo:
# Investigar os dados de vendas da HashTech e:
# - Entender quando a queda aconteceu
# - Descobrir o que mudou
# - Levantar hiposteses com base em dados


# Resoluçao ---------------------------------------------------------------

install.packages("readr")

library(dplyr)
library(ggplot2)
library(readr)

vendas_hashtech <- read_csv("vendas_hashtech.csv")
View(vendas_hashtech)

vendas_mensais <- vendas_hashtech %>% 
  mutate(mes = substr(data, 1, 7)) %>% 
  group_by(mes) %>% 
  summarise(faturamento_total = sum(faturamento))
  
ggplot(vendas_mensais, aes(x = mes, y = faturamento_total, group = 1)) +
  geom_line(size = 1.2) +
  geom_point(size = 2.5) +
  labs(
    title = "Faturamento Mensal",
    x = "Mes",
    y = "Faturamento"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

vendas_produtos <- vendas_hashtech %>% 
  mutate(mes = substr(data, 1, 7)) %>% 
  group_by(mes, produto) %>% 
  summarise(faturamento_total = sum(faturamento))

ggplot(vendas_produtos, aes(x = mes, y = faturamento_total, fill = produto)) +
  geom_col(position = "dodge") +
  labs(
    title = "Faturamento por produto",
    x = "Mes",
    y = "Faturamento",
    fill = NULL
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

preço_medio <- vendas_hashtech %>% 
  mutate(mes = substr(data, 1, 7)) %>% 
  group_by(mes, produto) %>% 
  summarise(preço_medio = mean(preco_unitario))

ggplot(preço_medio, aes(x = mes, y = preço_medio, color = produto, group = produto)) +
  geom_line(size = 1.2) +
  labs(
    title = "Preço medio dos Produtos ao Longo do Tempo",
    x = "Mes",
    y = "Faturamento",
    color = NULL
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))






  
