Algoritmo "Atividade Virtual 2"
// Disciplina  :  Algoritmo II
// Professor   : Ernani Claudio Borges
// Descri��o   : Elabore um algoritmo que receba um vetor X do tipo inteiro
//               de 50 posi��es.
//               Processar e calcular a maior diferen�a entre dois elementos
//               consecutivos de X, e mostrar quem s�o esses elementos e
//               quais suas posi��es.
//               criar as seguintes fun��es:
//            a) uma fun��o para validar corretivamente durante a entrada
//               para ter somente n�meros maior que zero;
//            b) uma fun��o que receba como par�metro os dois elementos
//               consecutivos de x, e retorne o resultado da diferen�a
//               entre eles.
// Autor(a)    : S�lvio de Oliveira Santos J�nior
//               CPF : 045.953.076-32  Polo: Divin�polis
// Data atual  : 23/03/2019
Var
// Declara�ao das Variveis do Algoritmo
  vet_valor : vetor[1..50] de inteiro
  maior_diferenca : inteiro
  resultado_diferenca : inteiro
  posicao1 : inteiro
  posicao2 : inteiro
  cont : inteiro
  
  // FUN�AO validar somente n�meros maior que zero
    funcao validar(valor : inteiro):logico
inicio
      se ( valor <= 0 ) entao
        retorne falso
      senao
        retorne verdadeiro
      fimse
    fimfuncao

//Fun�ao valor
      funcao diferenca( valor1, valor2 : inteiro ) : inteiro
inicio
        se ( valor1 <= valor2 ) entao
          retorne valor2-valor1
        senao
             se (valor1>valor2) entao
               retorne valor1-valor2
             fimse
        fimse
      fimfuncao

//Principal
Inicio
  maior_diferenca <- 0
  resultado_diferenca <- 0
  posicao1 <- 0
  posicao2 <- 0
  
//inicializando PROGRAMA
  Limpatela
  
    Escreval("============================================================")
    Escreval("                   Atividade Presencial 2")
    Escreval
    Escreval("   **********  DIFEREN�A ENTRE DOIS ELEMENTOS ********* ")
    Escreval
    Escreval("============================================================")
    Escreval
    Escreval("  Escreva 50 n�meros diversos, maior que zero ")
    Escreval
    
     para cont de 1 ate 50 faca
       Escreval(" Escreva um valor qualquer")
       leia(vet_valor[cont])
//VALIDA SE O VALOR � MAIOR QUE ZERO
         se ( validar(vet_valor[cont]) = verdadeiro ) entao
            se ( cont > 1 ) entao
              resultado_diferenca <- diferenca (vet_valor[cont-1],vet_valor[cont])
//compara se maior_diferen�a � menor que resultado_diferen�a
// se for menor ele armazena a diferen�a na vari�vel maior_diferen�a

                 se (maior_diferenca <= resultado_diferenca) entao
                    maior_diferenca <- resultado_diferenca
                    posicao1 <- cont - 1
                    posicao2 <- cont
                 fimse
            fimse
         senao
           Escreval
           Escreval("  Numero invalido, digite novamete....!!!!")
           Escreval
         fimse
     fimpara
     
//FINALIZANDO PROGRAMA

  Escreval("=============================================================")
  Escreval("                        RESULTADO                            ")
  Escreval("=============================================================")
  Escreval
  Escreval("MAIOR DIFEREN�A entre dois n�meros: ", maior_diferenca)
  Escreval
  Escreval("POSICAO NO VETOR DO VALOR1 �: ", posicao1)
  Escreval("VALOR 1: ", vet_valor[posicao1])
  Escreval
  Escreval("POSICAO NO VETOR DO VALOR2 �: ", posicao2)
  Escreval("VALOR 2: ", vet_valor[posicao2])
  Escreval
  Escreval("   ***************** FIM DO PROGRMA *********************")
  Escreval
  Escreval("          ******         ACABOU        ******")

Fimalgoritmo