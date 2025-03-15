programa
{
    inteiro matriz[3][2]
    
    funcao inicio()
    {
        para(inteiro i = 0; i < 3; i++) {
            para(inteiro j = 0; j < 2; j++) {
                escreva("Insira um número para a posição [", i, "][", j, "]: ")
                leia(matriz[i][j])
            }
        }
        escreva("\nOs números inseridos na ordem inversa são:\n")
        para(inteiro i = 2; i >= 0; i--) {
            para(inteiro j = 1; j >= 0; j--) {
                escreva(matriz[i][j], " ")
            }
            escreva("\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 550; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */