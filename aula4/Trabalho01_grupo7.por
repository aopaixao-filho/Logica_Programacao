programa
{
	//TRABALHO GRUPO 7
	
	const inteiro fileiras = 12 // 12 fileiras (1 a 12)
	const inteiro poltronasPorFileira = 10 // 10 poltronas por fileira
	logico poltronas[fileiras][poltronasPorFileira] // Matriz de poltronas
	cadeia letrasFileiras[fileiras] = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"} // Apenas de A a L


	// Função para inicializar o mapa de poltronas como disponíveis (0)
	funcao inicializarPoltronas()
	{
		para (inteiro i = 0; i < fileiras; i++) {
			para (inteiro j = 0; j < poltronasPorFileira; j++) {
				poltronas[i][j] = falso // Todas as poltronas começam disponíveis
			}
		}
	}

	
	// Exibe o mapa de poltronas atualizado
	funcao exibirMapaPoltronas()
	{
		escreva("\n   ") // Espaço para alinhar os números corretamente
        
		// Exibir números das poltronas no topo
		para (inteiro j = 0; j < poltronasPorFileira; j++) {
			escreva(j + 1, " ")  
		}
		escreva("\n")

		// Exibir fileiras com letras (A-L)
		para (inteiro i = 0; i < fileiras; i++) { 
			escreva(letrasFileiras[i], "  ") // Exibir a letra da fileira

			para (inteiro j = 0; j < poltronasPorFileira; j++) {
				se (poltronas[i][j]) {
					escreva("1 ") // Poltrona ocupada
				}
				senao {
					escreva("0 ") // Poltrona vazia
				}
			}
			escreva("\n") // Pula para a próxima linha após exibir uma fileira
		}
		escreva("\n")
		}

	
	// Verifica se uma fileira está cheia
	funcao logico fileiraCheia(inteiro fileira){
		para (inteiro j = 0; j < poltronasPorFileira; j++) {
			se (nao poltronas[fileira][j]) {
				retorne falso
			}
		}
		retorne verdadeiro
	}

	
	// Obtém o índice da fileira com base na letra
	funcao inteiro obterIndiceFileira(cadeia letra){
		para (inteiro i = 0; i < fileiras; i++){
			se (letra == letrasFileiras[i]){
				retorne i
			}
		}
		retorne -1 // Fileira inválida
	}

    
	funcao inicio(){
		inicializarPoltronas()
		logico continuar = verdadeiro
		cadeia resposta

		enquanto (continuar){
			escreva("Digite a fileira (A a L): ")
			cadeia fileiraInput
			leia(fileiraInput)

			inteiro fileira = obterIndiceFileira(fileiraInput)

			se (fileira == -1) {
				escreva("Fileira inválida. Tente novamente.\n")
			} 
			senao {
				se (fileiraCheia(fileira)) {
                    	escreva("A fileira ", fileiraInput, " está cheia. Tente outra fileira.\n")
				}
				senao {
					escreva("Digite o número da poltrona (1 a 10): ")
					inteiro poltrona
					leia(poltrona)

					se(poltrona <= 0){
						escreva("\nPrograma finalizado!\n")
						pare
					}

					senao se (poltrona >= 1 e poltrona <= poltronasPorFileira) {
						inteiro indicePoltrona = poltrona - 1 

						se (nao poltronas[fileira][indicePoltrona]) {
							poltronas[fileira][indicePoltrona] = verdadeiro 
							escreva("Poltrona reservada com sucesso!\n")
						}
						senao {
							escreva("Poltrona ocupada. Tente novamente.\n")
						}
					} 
                        
					senao {
						escreva("Poltrona inválida. Tente novamente.\n")
					}
				}
			}

			escreva("Deseja reservar outra poltrona? (S/N): ")
			leia(resposta)
			se (resposta == "N" ou resposta == "n") {
				continuar = falso
			}
			senao se (resposta != "S" e resposta != "N" e resposta != "s") {
				escreva("Opção inválida. Comece novamente!\n")
				continuar = falso
			}
		}

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
 * @POSICAO-CURSOR = 2622; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {poltronas, 7, 8, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */