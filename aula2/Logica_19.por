programa
{
	
	funcao inicio()
	{
		real peso, altura, IMC

		escreva("Digite o seu peso: ")
		leia(peso)
		escreva("Digite a sua altura: ")
		leia(altura)
		IMC = peso / (altura * altura)
		escreva("O IMC dessa pessoa é: ", IMC)
		se(IMC < 18.5){
			escreva("\nAbaixo do peso")
		}senao se(IMC <= 24.9){
			escreva("\nPeso normal")
		}senao se(IMC <= 29.9){
			escreva("\nSobrepeso")
		}senao{
			escreva("\nwObesidade")
		} 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */