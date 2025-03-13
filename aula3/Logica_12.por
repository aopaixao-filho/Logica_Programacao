programa
{
	
	funcao inicio()
	{
		inteiro numero
		logico S, n
		escreva("Escolha uma quantidade de numeros: ")
		leia(numero)

		enquanto(numero < 10){
			escreva("Deseja continuar?")
		}se(S == verdadeiro){
			escreva(numero++)
		}senao se(n == verdadeiro){
			escreva("Pararemos por aqui!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 310; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */