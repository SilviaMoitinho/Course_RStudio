
# While -------------------------------------------------------------------

cupons <- 10

while (cupons >= 0) {
  cat("Cupons disponiveis", cupons, "\n")
  cupons <- cupons -1
  if (cupons == 5){
    print("Voce ja gastou metade dos cupons")
  }
}



# For ---------------------------------------------------------------------

vendas_joao <- c(12,15,18,20,22)

# Opçao 1
for (venda in vendas_joao) {
  print(venda)
}

# Opçao 2
for (i in 1:length(vendas_joao)) {
  print(vendas_joao[i])
}

# Exemplo com if
for (vendas in vendas_joao){
  if (vendas > 12){
    print("Continue assim, muito bem")
  } else {
    print("Se esforce mais")
  }
  print(vendas)
}

# next
for (venda in vendas_joao){
  if (venda == 15){
    next # Pula para a proxima execuçao
  }
  print(venda)
}

# break
for (venda in vendas_joao){
  if (venda < 12){
    print("Mandou muito mal") 
    break   # Para parar
  }
  print(venda)
}



# Desafio -----------------------------------------------------------------

# ENUNCIADO

# Voce tem um data frame com os nomes dos vendedores e o total de vendas em
# reais de cada um. Seu objetivo é calcular a comissao de cada vendedor:

# Vendas acima de 10.000 - 12%
# Vendas acima de 7.000 - 10%
# Vendas acima de 5.000 - 7%
# Vendas até 5.000 - 0%

# Crie uma nova coluna no data frame com o valor da comissao para cada vendedor.

vendedores <- c("Ana", "Bruno", "Carlos", "Daniela", "Eduardo")
vendas <- c(12000, 8000, 4500, 10000, 6000)
df <- data.frame(vendedores, vendas)

for (i in 1:nrow(df)){
  if (df$vendas[i] > 10000){
    comissao <- 0.12 * df$vendas[i]
  } else if (df$vendas[i] > 7000){
    comissao <- 0.10 * df$vendas[i]
  } else if (df$vendas[i] > 5000){
    comissao <- 0.07 * df$vendas[i]
  } else {
    comissao <- 0
  }
  df$comissao[i] <- comissao
}
View(df)









