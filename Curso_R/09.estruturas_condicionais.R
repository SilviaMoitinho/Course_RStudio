
# Operadores relacionais --------------------------------------------------

x <- 10
y <- 7

x == y # Igual
x != y # Diferente
x > y # Maior
x >= y # Maior ou igual
x < y # Menor
x <= y # Menor ou igual



# Operadores logicos ------------------------------------------------------

# "E" (&) - as duas expressoes devem ser verdadeiras para retornar TRUE
TRUE & TRUE # = TRUE
TRUE & FALSE # = FALSE

# "Ou" (|) - uma unica expressao deve ser verdadeira para retornar TRUE
TRUE | FALSE # = TRUE

# "NAO" (!) - retorna o contrario da expressao
! TRUE # = False
!! TRUE # = True



# Estruturas condicionais -------------------------------------------------

vendas <- 8000
meta <- 7000
novos_clientes <- 3

if (vendas >= meta){
  print("Parabens, voce bateu a meta!")
} else {
  print("Poxa, voce nao bateu a meta.")
}

if (vendas >= meta & novos_clientes > 5){
  comissao <- 0.10 * vendas
  cat("Incrivel, voce bateu a meta de vendas e de clientes, sua comissao é R$", comissao)
} else if (vendas >= meta | novos_clientes > 5){
  comissao <- 0.07 * vendas
  cat("Voce atingiu um dos objetivos, sua comissao é R$", comissao)
} else {
  print("Poxa, voce nao atingiu nenhum objetivo.")
}



# Desafio -----------------------------------------------------------------

# ENUNCIADO

# Voce trabalha numa plataforma de straming e precisa criar uma verificaçao para
# liberar ou nao o acesso de um usuario a um filme com restriçao de idade.
# Use os seguintes dados:

idade <- 17
tem_autorizaçao <- TRUE

# As regras sao:
# Para assistir ao filme, o usuario deve ter 18 anos ou mais, ou ter uma autorizaçao
# dos responsaveis.
# Se ele puder assistir, exiba: "Acesso liberado! Boa sessao"
# Se ele nao puder assistir, exiba: "Acesso negado!"

# Seu desafio é:
# Escrever o codigo que usa operadores logicos e estruturas condicionais para
# decidir se o acesso sera liberado ou nao.

if (idade >= 18 | tem_autorizaçao == TRUE){
  print("Acesso liberado! Boa sessao")
} else {
  print("Acesso negado.")
}
