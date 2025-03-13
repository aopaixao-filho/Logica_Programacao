programa
{
	inclua biblioteca Matematica --> mat
    funcao inicio()
    {
    	
        inteiro votosX = 0, votosY = 0, votosBranco = 0
        inteiro voto
        logico votacaoAtiva = verdadeiro

        enquanto (votacaoAtiva)
        {
            escreva("\nEscolha uma opção para votar:\n")
            escreva("1 - Candidato X\n")
            escreva("2 - Candidato Y\n")
            escreva("3 - Voto em Branco\n")
            escreva("0 - Finalizar a votação e exibir resultados\n")
            escreva("Digite o número da sua opção: ")
            leia(voto)

            escolha (voto)
            {
                caso 1:
                    votosX++
                    escreva("Voto registrado para o Candidato X.\n")
                    pare
                caso 2:
                    votosY++
                    escreva("Voto registrado para o Candidato Y.\n")
                    pare
                caso 3:
                    votosBranco++
                    escreva("Voto em branco registrado.\n")
                    pare
                caso 0:
                    votacaoAtiva = falso
                    escreva("Votação encerrada. Exibindo resultados...\n")
                    pare
                caso contrario:
                    escreva("Opção inválida! Tente novamente.\n")
            }
        }

        inteiro totalVotosValidos = votosX + votosY

        real porcentagemX = 0.0, porcentagemY = 0.0
        se (totalVotosValidos > 0)
        {
            porcentagemX = mat.arredondar((votosX * 100.0) / totalVotosValidos, 2)
            porcentagemY = mat.arredondar((votosY * 100.0) / totalVotosValidos, 2)
        }

        escreva("\nResultado da Votação:\n")
        escreva("\nO total de votos é: ", votosY + votosX + votosBranco, "\n")
        escreva("Candidato X: ", votosX, " votos (", porcentagemX, "%)\n")
        escreva("Candidato Y: ", votosY, " votos (", porcentagemY, "%)\n")
        escreva("Votos em Branco: ", votosBranco, " votos\n")

        se (votosX > votosY)
        {
            escreva("O Candidato X venceu a eleição!\n")
        }
        senao se (votosY > votosX)
        {
            escreva("O Candidato Y venceu a eleição!\n")
        }
        senao
        {
            escreva("A eleição terminou em empate!\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2000; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */