programa
{
	
	funcao inicio()
	{
		inteiro idade[5]
		inteiro menorIdade = 999
		inteiro maiorIdade = 0
		real somaIdade = 0.0
		real mediaIdade = 0.0
		escreva("Insira 5 idades: ", "\n")
		para(inteiro i = 0; i < 5; i++){
			escreva("Idade ", i + 1, ": ")
			leia(idade[i])
		
			se(idade[i] > maiorIdade) {
				maiorIdade = idade[i]
			}
			
			se(idade[i] < menorIdade) {
				menorIdade = idade[i]
			}
			somaIdade += idade[i]
		}		
		mediaIdade = somaIdade / 5

			escreva("A maior idade é: ", maiorIdade)
			escreva("\nA menor idade é: ", menorIdade)
			escreva("\nA media de idades é: ", mediaIdade)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 410; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */