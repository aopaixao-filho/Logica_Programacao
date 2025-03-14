programa
{
	
	funcao inicio()
	{
		inteiro numero
		escreva("Insira um numero para calcular a tabuada: ")
		leia(numero)
		para(inteiro i = 1; i <= 10; i++){
			inteiro resultado = numero * i
			escreva("\nA tabuada de ", numero, " é: ", resultado)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */