programa
{
	
	funcao inicio()
	{
		real qtp
		real qtb
		real pao = 0.50
		real broa = 5.00
		inteiro arrecadado
		inteiro guardar
		escreva("Insira a quantidade de pães vendidos: ")
		leia(qtp)
		escreva("Insira a quantidade de broas vendidos: ")
		leia(qtb)

		escreva("A quantidade de dinheiro obtido no dia é:\t", arrecadado = (qtp * pao) + (qtb * broa), "\t", "A quantidade que ele irá guardar é:\t", guardar = arrecadado * 0.10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 446; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */