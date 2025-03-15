programa
{
    inteiro matriz[3][2]
    
    funcao inicio()
    {
        inteiro maior, menor

        // Preenche a matriz e inicializa maior e menor com o primeiro valor
        escreva("Insira um número para a posição [0][0]: ")
        leia(matriz[0][0])
        maior = matriz[0][0]
        menor = matriz[0][0]

        // Loop para preencher o restante da matriz e encontrar o maior e o menor valor
        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 2; j++) {
                // Pula a primeira posição, pois já foi preenchida
                se (i == 0 e j == 0) {
                    // Não faz nada, pois já foi preenchido
                } senao {
                    escreva("Insira um número para a posição [", i, "][", j, "]: ")
                    leia(matriz[i][j])

                    // Atualiza o maior valor
                    se (matriz[i][j] > maior) {
                        maior = matriz[i][j]
                    }
                    // Atualiza o menor valor
                    se (matriz[i][j] < menor) {
                        menor = matriz[i][j]
                    }
                }
            }
        }

        // Exibe a matriz
        escreva("\nOs números inseridos foram:\n")
        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 2; j++) {
                escreva(matriz[i][j], " ")
            }
            escreva("\n") // Pula para a próxima linha após exibir uma linha da matriz
        }

        // Exibe o maior e o menor valor
        escreva("O maior número inserido é: ", maior, "\n")
        escreva("O menor número inserido é: ", menor, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1176; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */