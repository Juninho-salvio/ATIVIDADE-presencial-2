Algoritmo "Atividade Virtual 2"
// Disciplina  :  Algoritmo II
// Professor   : Ernani Claudio Borges
// Descrição   : Elabore um algoritmo que receba um vetor X do tipo inteiro
//               de 50 posições.
//               Processar e calcular a maior diferença entre dois elementos
//               consecutivos de X, e mostrar quem são esses elementos e
//               quais suas posições.
//               criar as seguintes funções:
//            a) uma função para validar corretivamente durante a entrada
//               para ter somente números maior que zero;
//            b) uma função que receba como parâmetro os dois elementos
//               consecutivos de x, e retorne o resultado da diferença
//               entre eles.
// Autor(a)    : Sálvio de Oliveira Santos Júnior
//               CPF : 045.953.076-32  Polo: Divinópolis
// Data atual  : 23/03/2019
Var
// Declaraçao das Variveis do Algoritmo
  vet_valor : vetor[1..50] de inteiro
  maior_diferenca : inteiro
  resultado_diferenca : inteiro
  posicao1 : inteiro
  posicao2 : inteiro
  cont : inteiro
  
  // FUNÇAO validar somente números maior que zero
    funcao validar(valor : inteiro):logico
inicio
      se ( valor <= 0 ) entao
        retorne falso
      senao
        retorne verdadeiro
      fimse
    fimfuncao

//Funçao valor
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
    Escreval("   **********  DIFERENÇA ENTRE DOIS ELEMENTOS ********* ")
    Escreval
    Escreval("============================================================")
    Escreval
    Escreval("  Escreva 50 números diversos, maior que zero ")
    Escreval
    
     para cont de 1 ate 50 faca
       Escreval(" Escreva um valor qualquer")
       leia(vet_valor[cont])
//VALIDA SE O VALOR É MAIOR QUE ZERO
         se ( validar(vet_valor[cont]) = verdadeiro ) entao
            se ( cont > 1 ) entao
              resultado_diferenca <- diferenca (vet_valor[cont-1],vet_valor[cont])
//compara se maior_diferença é menor que resultado_diferença
// se for menor ele armazena a diferença na variável maior_diferença

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
  Escreval("MAIOR DIFERENÇA entre dois números: ", maior_diferenca)
  Escreval
  Escreval("POSICAO NO VETOR DO VALOR1 É: ", posicao1)
  Escreval("VALOR 1: ", vet_valor[posicao1])
  Escreval
  Escreval("POSICAO NO VETOR DO VALOR2 É: ", posicao2)
  Escreval("VALOR 2: ", vet_valor[posicao2])
  Escreval
  Escreval("   ***************** FIM DO PROGRMA *********************")
  Escreval
  Escreval("          ******         ACABOU        ******")

Fimalgoritmo