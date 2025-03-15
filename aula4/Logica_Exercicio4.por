programa
{
    inteiro matriz[3][2]
    
    funcao inicio()
    {
        inteiro pares[6], impares[6]
        inteiro contPar = 0, contImpar = 0
        
        escreva("Insira um número para a posição [0][0]: ")
        leia(matriz[0][0])
        
        se (matriz[0][0] % 2 == 0) {
            pares[contPar] = matriz[0][0]
            contPar = contPar + 1
        } senao {
            impares[contImpar] = matriz[0][0]
            contImpar = contImpar + 1
        }

        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 2; j++) {
                se (i == 0 e j == 0) {
                } senao {
                    escreva("Insira um número para a posição [", i, "][", j, "]: ")
                    leia(matriz[i][j])
                    
                    se (matriz[i][j] % 2 == 0) {
                        pares[contPar] = matriz[i][j]
                        contPar = contPar + 1
                    } senao {
                        impares[contImpar] = matriz[i][j]
                        contImpar = contImpar + 1
                    }
                }
            }
        }

        escreva("\nOs números inseridos foram:\n")
        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 2; j++) {
                escreva(matriz[i][j], " ")
            }
            escreva("\n")
        }

        escreva("\nNúmeros pares inseridos: ")
        para(inteiro i = 0; i < contPar; i++) {
            escreva(pares[i], " ")
        }

        escreva("\nNúmeros ímpares inseridos: ")
        para(inteiro i = 0; i < contImpar; i++) {
            escreva(impares[i], " ")
        }
        
        escreva("\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1358; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */