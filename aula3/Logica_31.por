programa
{
    cadeia convidados[50]
    inteiro quantidade_convidados = 0
    real valor_por_convidado = 120.00
    
    funcao adicionarConvidado()
    {
        se (quantidade_convidados < 50) {
            escreva("Insira o nome do convidado: ")
            leia(convidados[quantidade_convidados])
            quantidade_convidados++
            escreva("Convidado adicionado com sucesso!\n")
        } senao {
            escreva("Limite de convidados atingido (50 convidados).\n")
        }
    }
    funcao removerConvidado()
    {
        se (quantidade_convidados > 0) {
            escreva("Lista de convidados:\n")
            para (inteiro i = 0; i < quantidade_convidados; i++) {
                escreva(i + 1, " - ", convidados[i], "\n")
            }
            escreva("Digite o número do convidado que deseja remover: ")
            inteiro indice
            leia(indice)
            indice--

            se (indice >= 0 e indice < quantidade_convidados) {
                para (inteiro i = indice; i < quantidade_convidados - 1; i++) {
                    convidados[i] = convidados[i + 1]
                }
                quantidade_convidados--
                escreva("Convidado removido com sucesso!\n")
            } senao {
                escreva("Índice inválido.\n")
            }
        } senao {
            escreva("Não há convidados para remover.\n")
        }
    }

    funcao exibirConvidados()
    {
        se (quantidade_convidados > 0) {
            escreva("Lista de convidados:\n")
            para (inteiro i = 0; i < quantidade_convidados; i++) {
                escreva(i + 1, " - ", convidados[i], "\n")
            }
        } senao {
            escreva("Não há convidados cadastrados.\n")
        }
    }
    funcao calcularTotalPorConvidado()
    {
        se (quantidade_convidados > 0) {
            escreva("Valor a pagar por convidado: R$", valor_por_convidado, "\n")
        } senao {
            escreva("Não há convidados cadastrados.\n")
        }
    }

    funcao calcularTotalGeral()
    {
        real total_geral = quantidade_convidados * valor_por_convidado
        escreva("Total a pagar por todos os convidados: R$", total_geral, "\n")
    }
    funcao exibirQuantidadeConvidados()
    {
    		escreva("Quantidade de convidados presentes: ", quantidade_convidados, "\n")
    }

    funcao inicio()
    {
        inteiro opcao
        enquanto (verdadeiro) {
            escreva("\nMENU DE OPÇÕES:\n")
            escreva("1 - Adicionar convidado\n")
            escreva("2 - Remover convidado\n")
            escreva("3 - Exibir lista de convidados\n")
            escreva("4 - Calcular total por convidado\n")
            escreva("5 - Calcular total geral\n")
            escreva("6 - Exibir a quantidade de convidados cadastrados\n")
            escreva("7 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha (opcao) {
                caso 1:
                    adicionarConvidado()
                    pare
                caso 2:
                    removerConvidado()
                    pare
                caso 3:
                    exibirConvidados()
                    pare
                caso 4:
                    calcularTotalPorConvidado()
                    pare
                caso 5:
                    calcularTotalGeral()
                    pare
                caso 6:
                	exibirQuantidadeConvidados()
                	pare
                caso 7:
                    escreva("Saindo do programa...\n")
                    retorne
                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */