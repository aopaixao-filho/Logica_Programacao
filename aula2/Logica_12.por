programa
{
	
	funcao inicio()
	{
		inteiro numero1
		inteiro numero2

		escreva("Insira o numero 1: ")
		leia(numero1)
		escreva("\nInsira o numero 2: ")
		leia(numero2)

		se(numero1 > numero2){
			escreva("O numero 1 é maior que o numero 2")
		}senao se(numero1 < numero2){
			escreva("O numero 1 é menor que o numero 2")
		}senao(
			escreva("Os numeros são inválidos"))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 200; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */