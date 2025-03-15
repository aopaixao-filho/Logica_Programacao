programa
{
    // Constantes
    const inteiro FILEIRAS = 16 // Fileiras de A a P
    const inteiro POLTRONAS_POR_FILEIRA = 18 // 18 poltronas por fileira

    // Variáveis globais
    logico poltronas[FILEIRAS][POLTRONAS_POR_FILEIRA] // Matriz de poltronas (true = ocupada, false = disponível)
    cadeia letras_fileiras[FILEIRAS] = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P"} // Letras das fileiras

    // Função para inicializar o mapa de poltronas
    funcao inicializarPoltronas()
    {
        para (inteiro i = 0; i < FILEIRAS; i++) {
            para (inteiro j = 0; j < POLTRONAS_POR_FILEIRA; j++) {
                poltronas[i][j] = falso // Todas as poltronas começam disponíveis
            }
        }
    }

    // Função para exibir o mapa de poltronas
    funcao exibirMapaPoltronas()
    {
        escreva("\nMapa de Poltronas:\n")
        escreva("    ") // Espaço para alinhar os números das poltronas
        para (inteiro j = 1; j <= POLTRONAS_POR_FILEIRA; j++) {
            escreva(j, " ") // Números das poltronas
        }
        escreva("\n")

        para (inteiro i = 0; i < FILEIRAS; i++) {
            // Exibe a letra da fileira
            escreva(letras_fileiras[i], "   ")

            // Exibe o estado das poltronas
            para (inteiro j = 0; j < POLTRONAS_POR_FILEIRA; j++) {
                se (poltronas[i][j]) {
                    escreva("X ") // Poltrona ocupada
                } senao {
                    escreva(". ") // Poltrona disponível
                }
            }
            escreva("\n") // Pula para a próxima linha
        }
        escreva("\n")
    }

    // Função para verificar se uma fileira está cheia
    funcao logico fileiraCheia(inteiro fileira)
    {
        para (inteiro j = 0; j < POLTRONAS_POR_FILEIRA; j++) {
            se (nao poltronas[fileira][j]) {
                retorne falso // A fileira não está cheia
            }
        }
        retorne verdadeiro // A fileira está cheia
    }

    // Função para obter o índice da fileira a partir da letra
    funcao inteiro obterIndiceFileira(cadeia letra)
    {
        para (inteiro i = 0; i < FILEIRAS; i++) {
            // Compara a letra com cada elemento do vetor de letras
            se (letra == letras_fileiras[i]) {
                retorne i
            }
        }
        retorne -1 // Retorna -1 se a letra não for encontrada
    }

    // Função principal
    funcao inicio()
    {
        inicializarPoltronas()
        logico continuar = verdadeiro
        cadeia resposta // Variável para armazenar a resposta do usuário

        enquanto (continuar) {
            // Solicita a fileira
            escreva("Digite a fileira (A a P): ")
            cadeia fileira_input
            leia(fileira_input)

            // Converte a letra da fileira para índice (0 a 15)
            inteiro fileira = obterIndiceFileira(fileira_input)

            // Verifica se a fileira é válida
            se (fileira == -1) {
                escreva("Fileira inválida. Tente novamente.\n")
            }

            // Verifica se a fileira está cheia
            se (fileiraCheia(fileira)) {
                escreva("A fileira ", fileira_input, " está cheia. Tente outra fileira.\n")
            } senao {
                // Solicita a poltrona
                escreva("Digite o número da poltrona (1 a 18): ")
                inteiro poltrona
                leia(poltrona)

                // Verifica se a poltrona é válida
                se (poltrona >= 1 e poltrona <= POLTRONAS_POR_FILEIRA) {
                    inteiro indice_poltrona = poltrona - 1 // Ajusta para o índice da matriz (0 a 17)

                    // Verifica se a poltrona está disponível
                    se (nao poltronas[fileira][indice_poltrona]) {
                        poltronas[fileira][indice_poltrona] = verdadeiro // Reserva a poltrona
                        escreva("Poltrona reservada com sucesso!\n")
                    } senao {
                        escreva("Poltrona ocupada. Tente novamente.\n")
                    }
                } senao {
                    escreva("Poltrona inválida. Tente novamente.\n")
                }
            }

            // Pergunta se o usuário deseja continuar
            escreva("Deseja reservar outra poltrona? (S/N): ")
            leia(resposta)
            se (resposta == "N" ou resposta == "n") {
                continuar = falso
            }
        }

        // Exibe o mapa final de poltronas
        escreva("\nMapa final de poltronas:\n")
        exibirMapaPoltronas()
        escreva("Obrigado por utilizar o sistema de reservas!\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */