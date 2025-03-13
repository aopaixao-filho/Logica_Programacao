programa
{
	
	funcao inicio()
	{
		inteiro numero, totalPar = 0, totalImpar = 0
		escreva("digite um n: ")
		leia(numero)
		limpa()
		enquanto(numero > 0){
			se(numero % 2 == 0){
				escreva("\nPar")
				totalPar++
			}senao{
				escreva("\nImpar")
				totalImpar++
			}
			escreva("\nDigite um numero: ")
			leia(numero)
			limpa()
		}
		escreva("Total Par: ", totalPar)
		escreva("\nTotal impar: ", totalImpar)
		escreva("\nTotal Geral: ", totalPar + totalImpar)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 203; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */