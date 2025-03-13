programa
{
    funcao inicio()
    {
        real precoHamburguer = 3.00
        real precoCheeseburger = 2.50
        real precoFritas = 2.50
        real precoRefrigerante = 1.00
        real precoMilkshake = 3.00

        inteiro qtdHamburguer = 0, qtdCheeseburger = 0, qtdFritas = 0, qtdRefrigerante = 0, qtdMilkshake = 0

        inteiro escolha_U

        logico continuar = verdadeiro

        real totalConta = 0.0

        enquanto (continuar)
        {
            escreva("\nCardápio:\n")
            escreva("1 - Hambúrguer................. R$ 3,00\n")
            escreva("2 - Cheeseburger.............. R$ 2,50\n")
            escreva("3 - Fritas............................ R$ 2,50\n")
            escreva("4 - Refrigerante................. R$ 1,00\n")
            escreva("5 - Milkshake..................... R$ 3,00\n")
            escreva("0 - Sair\n")
            escreva("Digite o número do item que deseja: ")
            leia(escolha_U)

            escolha (escolha_U)
            {
                caso 1:
                    qtdHamburguer++
                    totalConta += precoHamburguer
                    escreva("1 Hambúrguer adicionado.\n")
                    pare
                caso 2:
                    qtdCheeseburger++
                    totalConta += precoCheeseburger
                    escreva("1 Cheeseburger adicionado.\n")
                    pare
                caso 3:
                    qtdFritas++
                    totalConta += precoFritas
                    escreva("1 Fritas adicionadas.\n")
                    pare
                caso 4:
                    qtdRefrigerante++
                    totalConta += precoRefrigerante
                    escreva("1 Refrigerante adicionado.\n")
                    pare
                caso 5:
                    qtdMilkshake++
                    totalConta += precoMilkshake
                    escreva("1 Milkshake adicionado.\n")
                    pare
                caso 0:
                    continuar = falso
                    escreva("Finalizando pedido...\n")
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
            }

            se (continuar)
            {
                inteiro opcao
                escreva("Deseja adicionar mais itens? (1 para sim, 0 para não): ")
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
                    escreva("Opção inválida! Continuando o pedido...\n")
                }
            }
        }
        escreva("\nResumo do Pedido:\n")
        escreva("Hambúrguer: ", qtdHamburguer, " unidade(s)\n")
        escreva("Cheeseburger: ", qtdCheeseburger, " unidade(s)\n")
        escreva("Fritas: ", qtdFritas, " unidade(s)\n")
        escreva("Refrigerante: ", qtdRefrigerante, " unidade(s)\n")
        escreva("Milkshake: ", qtdMilkshake, " unidade(s)\n")
        escreva("\nTotal da Conta: R$ ", totalConta, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2141; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */