
# Atrubuiçao de Variaveis -------------------------------------------------

x = 10 # jeito 'errado'
y <- 7 # jeito recomendado
print(y)

# Operaçoes com variaveis -------------------------------------------------

minhas_uvas <- 18
minhas_laranjas <- 22
minhas_frutas <- minhas_uvas + minhas_laranjas
print(minhas_frutas)

# Nomeaçao de Variaveis ---------------------------------------------------

# Deve começar com uma letra ou com um ponto (.) seguido de uma letra
# Pode conter letras, numeros, pontos (.) e underlines(_)
# Nao pode conter espaços ou outros simbolos ($, %, -, etc)
# Nao pode ser uma palavra reservada (if, print, TRUE, etc)
# Sao case-sensitive -> idade, Idade e IDADE sao variaveis diferentes

nome <- "Silvia"
.idade <- 26 # começando com o ponto, ela se torna uma variavel oculta, nao aparece no environment
fruta_favorita <- "maça"
idade <- 1
Idade <- 2
IDADE <- 3

# Tipos de Dados ----------------------------------------------------------

# Numeric
decimal <- 4.5
inteiro <- 8
int <- 4L # Para especificar que é inteiro

# Para saber qual é a classe
class(decimal)
class(int)

# Caracter
texto <- "hashtag"
numero_texto <- "4"
class(texto)

# Logical
logico_1 <- TRUE
logico_2 <- FALSE
class(logico_1)



# Desafio -----------------------------------------------------------------

# Enunciado:
# Voce começou a juntar dinheiro e quer acompanhar suas economias ao logo do
# mes. No inicio do mes, voce tinha R$150,00 guardados. Durante o mes, voce
# recebeu R$1000,00 de salario e gastou R$200,00 com despesas.
# Seu defafio é:
# - Criar 3 variaveis para armazenar os valores iniciais, recebidos e gastos.
# - Criar uma nova variavel para o saldo final que calcule quanto dinheiro sobrou.
# - Exibir o saldo final

inicial <- 150
recebidos <- 1000
gastos <- 200
saldo_final <- inicial + recebidos - gastos
print(saldo_final)
