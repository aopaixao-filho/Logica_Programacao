programa
{
    // Constantes
    const inteiro TAMANHO = 5 // Tamanho do tabuleiro (5x5)
    const inteiro QUANTIDADE_MINAS = 5 // Quantidade de minas no tabuleiro

    // Variáveis globais
    cadeia tabuleiro[TAMANHO][TAMANHO] // Tabuleiro visível para o jogador
    logico minas[TAMANHO][TAMANHO] // Tabuleiro com as minas
    inteiro casas_reveladas = 0 // Contador de casas reveladas
    inteiro total_casas_seguras = TAMANHO * TAMANHO - QUANTIDADE_MINAS // Total de casas sem minas

    // Função para inicializar o tabuleiro
    funcao inicializarTabuleiro()
    {
        para (inteiro i = 0; i < TAMANHO; i++) {
            para (inteiro j = 0; j < TAMANHO; j++) {
                tabuleiro[i][j] = " " // Inicializa todas as casas como não reveladas
                minas[i][j] = falso // Inicialmente, não há minas
            }
        }
    }

    // Função para exibir o tabuleiro
    funcao exibirTabuleiro()
    {
        escreva("\n  ") // Espaço para alinhar os índices das colunas
        para (inteiro j = 0; j < TAMANHO; j++) {
            escreva(j, " ") // Índices das colunas
        }
        escreva("\n")

        para (inteiro i = 0; i < TAMANHO; i++) {
            escreva(i, " ") // Índice da linha
            para (inteiro j = 0; j < TAMANHO; j++) {
                escreva(tabuleiro[i][j], " ") // Exibe o conteúdo da casa
            }
            escreva("\n")
        }
        escreva("\n")
    }

    // Função para gerar minas aleatoriamente
    funcao gerarMinas()
    {
        inteiro minas_colocadas = 0
        semente_aleatoria(12345) // Inicializa o gerador de números aleatórios

        enquanto (minas_colocadas < QUANTIDADE_MINAS) {
            inteiro linha = inteiro(aleatorio() * TAMANHO) // Gera um número aleatório entre 0 e TAMANHO-1
            inteiro coluna = inteiro(aleatorio() * TAMANHO) // Gera um número aleatório entre 0 e TAMANHO-1

            se (nao minas[linha][coluna]) {
                minas[linha][coluna] = verdadeiro
                minas_colocadas++
            }
        }
    }

    // Função para contar minas adjacentes
    funcao inteiro contarMinasAdjacentes(inteiro linha, inteiro coluna)
    {
        inteiro contador = 0
        para (inteiro i = linha - 1; i <= linha + 1; i++) {
            para (inteiro j = coluna - 1; j <= coluna + 1; j++) {
                se (i >= 0 e i < TAMANHO e j >= 0 e j < TAMANHO e minas[i][j]) {
                    contador++
                }
            }
        }
        retorne contador
    }

    // Função para revelar uma casa
    funcao logico revelarCasa(inteiro linha, inteiro coluna)
    {
        se (linha >= 0 e linha < TAMANHO e coluna >= 0 e coluna < TAMANHO) {
            se (minas[linha][coluna]) {
                escreva("Você clicou em uma mina! Fim de jogo.\n")
                retorne verdadeiro // Fim de jogo
            } senao se (tabuleiro[linha][coluna] == " ") {
                inteiro minas_adjacentes = contarMinasAdjacentes(linha, coluna)
                se (minas_adjacentes > 0) {
                    tabuleiro[linha][coluna] = cadeia(minas_adjacentes) // Converte o número para texto
                } senao {
                    tabuleiro[linha][coluna] = "0" // Casa vazia
                }
                casas_reveladas++
                retorne falso // Jogo continua
            }
        }
        escreva("Jogada inválida. Tente novamente.\n")
        retorne falso // Jogada inválida
    }

    // Função principal
    funcao inicio()
    {
        inicializarTabuleiro()
        gerarMinas()
        logico jogo_ativo = verdadeiro

        enquanto (jogo_ativo) {
            exibirTabuleiro()

            // Solicita a jogada
            inteiro linha = 0, coluna = 0
            escreva("Digite a linha (0 a ", TAMANHO - 1, "): ")
            leia(linha)
            escreva("Digite a coluna (0 a ", TAMANHO - 1, "): ")
            leia(coluna)

            // Revela a casa
            se (revelarCasa(linha, coluna)) {
                jogo_ativo = falso // Fim de jogo (clicou em uma mina)
            } senao se (casas_reveladas == total_casas_seguras) {
                escreva("Parabéns! Você venceu!\n")
                jogo_ativo = falso // Vitória
            }
        }

        // Exibe o tabuleiro final
        escreva("\nTabuleiro final:\n")
        para (inteiro i = 0; i < TAMANHO; i++) {
            para (inteiro j = 0; j < TAMANHO; j++) {
                se (minas[i][j]) {
                    tabuleiro[i][j] = "M" // Revela as minas
                }
            }
        }
        exibirTabuleiro()
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1718; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */