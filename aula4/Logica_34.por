programa
{
    // Variáveis globais
    cadeia tabuleiro[3][3] // Matriz 3x3 para o tabuleiro
    inteiro jogador_atual = 1 // 1 para jogador X, 2 para jogador O
    inteiro jogadas = 0 // Contador de jogadas

    // Função para inicializar o tabuleiro
    funcao inicializarTabuleiro()
    {
        para (inteiro i = 0; i < 3; i++) {
            para (inteiro j = 0; j < 3; j++) {
                tabuleiro[i][j] = " " // Inicializa todas as posições como vazias
            }
        }
    }

    // Função para exibir o tabuleiro
    funcao exibirTabuleiro()
    {
        escreva("\n  0   1   2\n") // Índices das colunas
        para (inteiro i = 0; i < 3; i++) {
            escreva(i, " ") // Índice da linha
            para (inteiro j = 0; j < 3; j++) {
                escreva(tabuleiro[i][j])
                se (j < 2) {
                    escreva(" | ") // Separador das colunas
                }
            }
            escreva("\n")
            se (i < 2) {
                escreva("  ---------\n") // Separador das linhas
            }
        }
        escreva("\n")
    }

    // Função para verificar se há um vencedor
    funcao logico verificarVencedor(cadeia jogador)
    {
        // Verifica linhas
        para (inteiro i = 0; i < 3; i++) {
            se (tabuleiro[i][0] == jogador e tabuleiro[i][1] == jogador e tabuleiro[i][2] == jogador) {
                retorne verdadeiro
            }
        }

        // Verifica colunas
        para (inteiro j = 0; j < 3; j++) {
            se (tabuleiro[0][j] == jogador e tabuleiro[1][j] == jogador e tabuleiro[2][j] == jogador) {
                retorne verdadeiro
            }
        }

        // Verifica diagonais
        se (tabuleiro[0][0] == jogador e tabuleiro[1][1] == jogador e tabuleiro[2][2] == jogador) {
            retorne verdadeiro
        }
        se (tabuleiro[0][2] == jogador e tabuleiro[1][1] == jogador e tabuleiro[2][0] == jogador) {
            retorne verdadeiro
        }

        // Se não houver vencedor
        retorne falso
    }

    // Função para verificar se o jogo terminou em empate
    funcao logico verificarEmpate()
    {
        retorne jogadas == 9 // Empate se todas as posições estiverem preenchidas
    }

    // Função para realizar uma jogada
    funcao logico realizarJogada(inteiro linha, inteiro coluna)
    {
        cadeia simbolo = " "
        se (jogador_atual == 1) {
            simbolo = "X"
        } senao {
            simbolo = "O"
        }

        se (linha >= 0 e linha < 3 e coluna >= 0 e coluna < 3 e tabuleiro[linha][coluna] == " ") {
            tabuleiro[linha][coluna] = simbolo
            jogadas++
            retorne verdadeiro
        } senao {
            escreva("Jogada inválida. Tente novamente.\n")
            retorne falso
        }
    }

    // Função principal
    funcao inicio()
    {
        inicializarTabuleiro()
        logico jogo_ativo = verdadeiro

        enquanto (jogo_ativo) {
            exibirTabuleiro()

            // Exibe o jogador atual
            escreva("Jogador ", jogador_atual, " (")
            se (jogador_atual == 1) {
                escreva("X")
            } senao {
                escreva("O")
            }
            escreva("), é a sua vez!\n")

            // Solicita a jogada
            inteiro linha, coluna
            escreva("Digite a linha (0, 1, 2): ")
            leia(linha)
            escreva("Digite a coluna (0, 1, 2): ")
            leia(coluna)

            // Realiza a jogada
            se (realizarJogada(linha, coluna)) {
                // Verifica se há um vencedor
                se (verificarVencedor("X")) {
                    exibirTabuleiro()
                    escreva("Jogador 1 (X) venceu!\n")
                    jogo_ativo = falso
                } senao se (verificarVencedor("O")) {
                    exibirTabuleiro()
                    escreva("Jogador 2 (O) venceu!\n")
                    jogo_ativo = falso
                } senao se (verificarEmpate()) {
                    exibirTabuleiro()
                    escreva("O jogo terminou em empate!\n")
                    jogo_ativo = falso
                } senao {
                    // Alterna o jogador
                    jogador_atual = 3 - jogador_atual // Alterna entre 1 e 2
                }
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 893; 
 * @PONTOS-DE-PARADA = 132;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */