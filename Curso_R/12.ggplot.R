
# Instalaçao e Carregamento dos Pacotes -----------------------------------

install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)



# Conhecendo os Dados -----------------------------------------------------

View(penguins)



# Visualizaçao de Dados com ggplot2 ---------------------------------------

# Grafico de Dispersao
ggplot(penguins, mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species)) +
  geom_point(size = 2, alpha = 0.7) +
  labs(
    title = "Bico dos pinguins:",
    subtitle = "Compimento VS Profundidade",
    x = "Comprimento do Bico (mm)",
    y = "Profundidade do Bico (mm)",
    color = NULL
  ) +
  theme_minimal()

# Grafico Boxplot

ggplot(penguins, aes(x = species, y = body_mass_g, fill = species)) +
  geom_boxplot() +
  labs(
    title = "Distribuiçao da Massa Corporal dos pinguins",
    x = "Especies",
    y = "Massa Corporal (g)",
  ) +
  guides(fill = FALSE) +
  theme_minimal()



# Desafio -----------------------------------------------------------------

# ENUNCIADO

# Voce foi contratado como cientista de dados para apresentar insights visuais
# sobre os pinguins. Voce deve criar um grafico de barras que mostre o total de
# pinguins registrados em cada ilha.

# Seu desafio é 
# - Agrupar os dados por ilha.
# - Calcular o total de pinguins para cada ilha.
# - Gerar um grafico de barras utilizando esses dados.

pinguins_ilhas <- penguins %>% 
  group_by(island) %>% 
  summarise(total_pinguins = n())

ggplot(pinguins_ilhas, aes(x = island, y = total_pinguins, fill = island)) +
  geom_col() +
  labs(
    title = "Total de Pinguins por Ilha"
    x = "Ilhas"
    y = "Total de penguins"
  ) +
  guides(fill = False) +
  theme_minimal()









