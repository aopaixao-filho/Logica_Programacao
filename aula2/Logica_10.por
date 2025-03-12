programa
{
	
	funcao inicio()
	{
		inteiro numero

		escreva("Insira o numero:\t")
		leia(numero)

		se(numero < 0){
			escreva("\nNegativo")
		}senao se(numero > 0){
			escreva("\nPositivo")
		}senao se(numero == 0){
			escreva("\nNumero igual a zero\t")
		}
		senao(
			escreva("\nNumero inválido\t"))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 315; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */