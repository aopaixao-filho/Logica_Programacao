programa
{
    const inteiro totalVagas = 30 // Total de vagas no estacionamento
    logico vagas[totalVagas] // Vetor representando as vagas (verdadeiro = ocupada, falso = livre)

    // Inicializa todas as vagas como livres (falso)
    funcao inicializarVagas()
    {
        para (inteiro i = 0; i < totalVagas; i++) {
            vagas[i] = falso
        }
    }

    // Função para entrada de veículo
    funcao entradaVeiculo()
    {
        inteiro vagaEscolhida
        escreva("\nDigite o número da vaga para ocupar (1 - ", totalVagas, "): ")
        leia(vagaEscolhida)

        se (vagaEscolhida < 1 ou vagaEscolhida > totalVagas) {
            escreva("\n Vaga inválida! Escolha um número entre 1 e ", totalVagas, ".\n")
        } senao se (vagas[vagaEscolhida - 1]) {
            escreva("\n Esta vaga já está ocupada!\n")
        } senao {
            vagas[vagaEscolhida - 1] = verdadeiro
            escreva("\n Veículo estacionado na vaga ", vagaEscolhida, "!\n")
        }
    }

    // Função para saída de veículo
    funcao saidaVeiculo()
    {
        inteiro vagaEscolhida
        escreva("\nDigite o número da vaga para liberar (1 - ", totalVagas, "): ")
        leia(vagaEscolhida)

        se (vagaEscolhida < 1 ou vagaEscolhida > totalVagas) {
            escreva("\n Vaga inválida! Escolha um número entre 1 e ", totalVagas, ".\n")
        } senao se (nao vagas[vagaEscolhida - 1]) {
            escreva("\n Esta vaga já está livre!\n")
        } senao {
            vagas[vagaEscolhida - 1] = falso
            escreva("\n Veículo removido da vaga ", vagaEscolhida, "!\n")
        }
    }

    // Exibe o mapa de vagas corretamente formatado
    funcao exibirMapaVagas()
    {
        escreva("\n Mapa de Vagas:\n")
        para (inteiro i = 0; i < totalVagas; i++) {
            escreva(i + 1, ": ") 
            
            se (vagas[i]) {
                escreva("[ OCUPADO] ")
            }
            senao {
                escreva("[ LIVRE]   ")
            }
            
            se ((i + 1) % 5 == 0) {
                escreva("\n")
            }
        }
        escreva("\n")
    }

    // Lista as vagas ocupadas e livres com exibição aprimorada
 funcao listarStatusVagas()
{
    logico haOcupadas = falso
    logico haLivres = falso

    inteiro contadorOcupadas = 0
    inteiro contadorLivres = 0

    inteiro listaOcupadas[totalVagas]
    inteiro listaLivres[totalVagas]

    // Preenche listas de ocupadas e livres
    para (inteiro i = 0; i < totalVagas; i++) {
        se (vagas[i]) {
            listaOcupadas[contadorOcupadas] = i + 1
            contadorOcupadas++
            haOcupadas = verdadeiro
        } senao {
            listaLivres[contadorLivres] = i + 1
            contadorLivres++
            haLivres = verdadeiro
        }
    }

    // Determina a maior contagem entre ocupadas e livres
    inteiro maiorContagem
    se (contadorOcupadas > contadorLivres) {
        maiorContagem = contadorOcupadas
    } senao {
        maiorContagem = contadorLivres
    }

    // Exibir cabeçalho formatado
    escreva("\n┌──────────────┬──────────────┐\n")
    escreva("│ Ocupadas		│ Livres     │\n")
    escreva("├────────────┼──────────────┤\n")

    // Exibe as listas em colunas corretamente alinhadas
    para (inteiro i = 0; i < maiorContagem; i++) {
        escreva("│ ")

        // Exibe vaga ocupada, alinhando para a direita
        se (i < contadorOcupadas) {
            se (listaOcupadas[i] < 10) {
                escreva(" ") // Adiciona espaço para alinhar números menores que 10
            }
            escreva(listaOcupadas[i], "         ")
        } senao {
            escreva("            ") // Espaço vazio para alinhar corretamente
        }

        escreva("│ ")

        // Exibe vaga livre, alinhando para a direita
        se (i < contadorLivres) {
            se (listaLivres[i] < 10) {
                escreva(" ") // Adiciona espaço para alinhar números menores que 10
            }
            escreva(listaLivres[i], "         ")
        } senao {
            escreva("            ") // Espaço vazio para alinhar corretamente
        }

        escreva("│\n")
    }

    escreva("└──────────────┴──────────────┘\n")

    se (nao haOcupadas) {
        escreva("\n Nenhuma vaga ocupada no momento.\n")
    }
    se (nao haLivres) {
        escreva("\n Não há vagas livres disponíveis.\n")
    }
}
    funcao inicio()
    {
        inicializarVagas()
        logico continuar = verdadeiro
        inteiro opcao

        enquanto (continuar)
        {
            escreva("\n Menu:\n")
            escreva("1 - Entrada de veículo \n")
            escreva("2 - Saída de veículo \n")
            escreva("3 - Exibir vagas livres e ocupadas \n")
            escreva("4 - Exibir mapa de vagas \n")
            escreva("5 - Sair \n")
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
                    listarStatusVagas()
                    pare
                caso 4:
                    exibirMapaVagas()
                    pare
                caso 5:
                    escreva("\n Programa encerrado!\n")
                    continuar = falso
                    pare
                caso contrario:
                    escreva("\n Opção inválida. Tente novamente.\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */