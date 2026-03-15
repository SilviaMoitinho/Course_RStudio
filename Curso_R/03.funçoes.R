
# O que é uma funçao?

# é um bloco de codigo reutilizavel para executar uma tarefa especifica.



# Estrutura de uma funçao -------------------------------------------------

print("texto")


#Argumentos
args(sample) #sample faz embaralhar

# Paginas de ajuda
?sample # ver documentaçao da funçao

dado <- 1:6

sample(dado, size = 1, replace = TRUE) # Usamos o replace, para podermos repetir os  numeros que ja sairam
sample(dado, size = 10, replace = TRUE, prob = c(0.1, 0.1, 0.1, 0.1, 0.1, 0.5)) # O p é a probabilidade, e o c concatena os nuemros, para cada numeros demos um peso - 0.1 e para o 6 demos um peso maior.

#Corpo da funçao
body(sample)

#Jogando o dado e obter a soma

dados <- sample(dado, size = 2, replace = TRUE)
sum(dados)



# Funçoes Personalizadas --------------------------------------------------


jogar_dados <- function(dado = 1:6) {
  dados <- sample(dado, size = 2, replace = TRUE)
  sum(dados)
}
  


# Desafio -----------------------------------------------------------------

# ENUNCIADO:
# Voce e seus amigos decidiram fazer um sorteio para ver quem
# vai pagar o almoço hoje! Cada um pegou um papel com um numero
# de 1 a 5. O seu numero foi o 3. Faça o sorteio de uma forma que
# aumente sua chance de escapar!

# Seu desafio é:
# Utilizar a funçao sample() para sortear um numero de 1 a 5.
# Usar o argumento prob para ajustar as chances de cada numero ser sorteado.
# Exibir na tela o numero escolhido


sorteio <- function(numeros = 1:5){
  resultado = sample(numeros, size = 1, prob = c(1, 1, 0.1, 1, 1))
  print(resultado)
}








