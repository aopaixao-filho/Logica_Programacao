programa
{
	
	funcao inicio()
	{
		cadeia nome[5]
		real altura[5]

		para(inteiro i = 0; i < 5; i++){
			escreva("Insira o seu nome: ")
			leia(nome[i])
			escreva("Insira a sua altura: ")
			leia(altura[i])
		}
		
		escreva("\n Dados inseridos: \n")
		para(inteiro i = 0; i < 5; i++){
			escreva("O seu nome é: ", nome[i], "e a sua altura é:\t", altura[i])
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 377; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */