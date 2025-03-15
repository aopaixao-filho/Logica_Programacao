programa
{
    const inteiro FILEIRAS = 10 // Fileiras de A a J
    const inteiro POLTRONAS_POR_FILEIRA = 12 // 12 poltronas por fileira
    logico encerrar = falso

    logico poltronas[FILEIRAS][POLTRONAS_POR_FILEIRA] // Matriz de poltronas (true = ocupada, false = disponível)
    cadeia letras_fileiras[FILEIRAS] = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"} // Letras das fileiras

    // Função para inicializar o mapa de poltronas
    funcao inicializarPoltronas()
    {
        para (inteiro i = 0; i < FILEIRAS; i++) {
            para (inteiro j = 0; j < POLTRONAS_POR_FILEIRA; j++) {
                poltronas[i][j] = falso // Todas as poltronas começam disponíveis
            }
        }
    }
    //Exibe o mapa de poltronas
    funcao exibirMapaPoltronas()
    {
        escreva("\nMapa de Poltronas:\n")
        escreva("     ")
        para (inteiro i = 0; i < FILEIRAS; i++) {
            escreva(letras_fileiras[i], " ") //exibe as fileiras na horizontal
        }
        escreva("\n")

        // Exibe as poltronas na vertical e o status na horizontal
        para (inteiro j = 0; j < POLTRONAS_POR_FILEIRA; j++) {
            se(j + 1 < 10){
            	escreva(j + 1, "    ")
            }senao {
            	escreva(j + 1, "   ")
            }
            para (inteiro i = 0; i < FILEIRAS; i++) {
                se (poltronas[i][j]) {
                    escreva("1 ") // Poltrona ocupada
                } senao {
                    escreva("0 ") // Poltrona vazia
                }
            }
            escreva("\n")
        }
        escreva("\n")
    }
    // Verifica se uma fileira está cheia ou não
    funcao logico fileiraCheia(inteiro fileira)
    {
        para (inteiro j = 0; j < POLTRONAS_POR_FILEIRA; j++) {
            se (nao poltronas[fileira][j]) {
                retorne falso
            }
        }
        retorne verdadeiro
    }

    // Obtém o indice de fileira
    funcao inteiro obterIndiceFileira(cadeia letra)
    {
        para (inteiro i = 0; i < FILEIRAS; i++) {
            se (letra == letras_fileiras[i]) {
                retorne i
            }
        }
        retorne -1 // Retorna -1 se a letra não for encontrada
    }
    
    funcao inicio()
    {
        inicializarPoltronas()
        logico continuar = verdadeiro
        cadeia resposta

        enquanto (continuar) {
            escreva("Digite a fileira (A a J): ")
            cadeia fileira_input
            leia(fileira_input)

            // Converte a letra da fileira para índice (0 a 10)
            inteiro fileira = obterIndiceFileira(fileira_input)

            // Valida a fileira
            se (fileira == -1) {
                escreva("Fileira inválida. Tente novamente.\n")
            } senao {
                // Verifica o estado da fileira
                se (fileiraCheia(fileira)) {
                    escreva("A fileira ", fileira_input, " está cheia. Tente outra fileira.\n")
                } senao {
                    // Solicita a poltrona
                    escreva("Digite o número da poltrona (1 a 12): ")
                    inteiro poltrona
                    leia(poltrona)

                    // Valida a poltrona
                    se (poltrona >= 1 e poltrona <= POLTRONAS_POR_FILEIRA) {
                        inteiro indice_poltrona = poltrona - 1 // Ajusta para o índice da matriz (0 a 14)

                        // Verifica o estado da poltrona
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
            }

            // Pergunta se deseja continuar
            escreva("Deseja reservar outra poltrona? (S/N): ")
            leia(resposta)
            se (resposta == "N" ou resposta == "n") {
                continuar = falso
            }senao se(resposta != "S" e resposta != "N"){
            	escreva("Opção inválida. Comece novamente!")
            	encerrar = verdadeiro
            	pare
            }
        }

        // Exibe o mapa final de poltronas
        se(encerrar == falso){
       	escreva("\nMapa final de poltronas:\n")
        	exibirMapaPoltronas()
        	escreva("Obrigado por utilizar o sistema de reservas!\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */