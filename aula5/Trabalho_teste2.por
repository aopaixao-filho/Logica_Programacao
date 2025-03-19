programa
{
    const inteiro totalVagas = 30 // Total de vagas no estacionamento
    logico vagas[totalVagas] // Vetor representando as vagas (true = ocupada, false = livre)

    // Inicializa todas as vagas como livres (false)
    funcao inicializarVagas()
    {
        para (inteiro i = 0; i < totalVagas; i++) {
            vagas[i] = falso
        }
    }

    // Exibe o mapa de vagas
    funcao exibirMapaVagas()
    {
        escreva("\nMapa de Vagas:\n")
        para (inteiro i = 0; i < totalVagas; i++) {
            escreva(i + 1, ": ")
            se (vagas[i]) {
                escreva("[OCUPADO] ")
            }
            senao {
                escreva("[LIVRE] ")
            }
            se ((i + 1) % 5 == 0) { // Formatação para exibir 5 vagas por linha
                escreva("\n")
            }
        }
        escreva("\n")
    }

    // Lista as vagas ocupadas
    funcao listarVagasOcupadas()
    {
        escreva("\nVagas ocupadas: ")
        logico haOcupadas = falso
        para (inteiro i = 0; i < totalVagas; i++) {
            se (vagas[i]) {
                escreva(i + 1, " ")
                haOcupadas = verdadeiro
            }
        }
        se (nao haOcupadas) {
            escreva("Nenhuma vaga ocupada.")
        }
        escreva("\n")
    }

    // Entrada de veículo
    funcao entradaVeiculo()
    {
        escreva("\nEscolha uma vaga para estacionar (1 a 30): ")
        inteiro vaga
        leia(vaga)

        se (vaga < 1 ou vaga > totalVagas) {
            escreva("Número inválido. Programa encerrado.\n")
        }
        
        inteiro indice = vaga - 1
        se (vagas[indice]) {
            escreva("Vaga já ocupada. Tente outra.\n")
        }
        senao {
            vagas[indice] = verdadeiro
            escreva("Veículo estacionado na vaga ", vaga, "!\n")
        }
    }

    // Saída de veículo
    funcao saidaVeiculo()
    {
        listarVagasOcupadas()
        
        escreva("\nEscolha a vaga para liberar: ")
        inteiro vaga
        leia(vaga)

        se (vaga < 1 ou vaga > totalVagas) {
            escreva("Número inválido. Programa encerrado.\n")
        }
        
        inteiro indice = vaga - 1
        se (nao vagas[indice]) {
            escreva("Essa vaga já está livre!\n")
        }
        senao {
            vagas[indice] = falso
            escreva("Vaga ", vaga, " liberada com sucesso!\n")
        }
    }

    funcao inicio()
    {
        inicializarVagas()
        logico continuar = verdadeiro
        inteiro opcao

        enquanto (continuar)
        {
            escreva("\nMenu:\n")
            escreva("1 - Entrada de veículo\n")
            escreva("2 - Saída de veículo\n")
            escreva("3 - Exibir vagas livres e ocupadas\n")
            escreva("4 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha (opcao) {
                caso 1:
                    entradaVeiculo()
                    pare
                caso 2:
                    saidaVeiculo()
                    pare
                caso 3:
                    exibirMapaVagas()
                    pare
                caso 4:
                    escreva("Programa encerrado!\n")
                    continuar = falso
                    pare
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
 * @POSICAO-CURSOR = 2078; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */