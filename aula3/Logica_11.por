programa
{
    funcao inicio()
    {
        inteiro numero, contador = 0
        logico continuar = verdadeiro

        escreva("Insira a quantidade de números para a contagem: ")
        leia(numero)

        se (numero <= 0)
        {
            escreva("Por favor, insira um número maior que 0.\n")
            retorne
        }

        inteiro metade = numero / 2

        enquanto (contador <= numero e continuar == verdadeiro)
        {
            escreva("Contagem atual: ", contador, "\n")

            se (contador == metade)
            {
                escreva("Você chegou à metade da contagem (", metade, "). Deseja continuar? (1 para sim, 0 para não): ")
                inteiro opcao
                leia(opcao)
                se (opcao == 1)
                {
                    continuar = verdadeiro
                }
                senao se (opcao == 0)
                {
                    continuar = falso
                }
                senao
                {
                    escreva("Opção inválida! Continuando a contagem...\n")
                }
            }

            contador++
        }
        escreva("Contagem finalizada! O número final é: ", contador - 1, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 824; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */