programa
{
		real peso
		real altura
		inteiro IMC = 0
	funcao inicio()
	{
		escreva("Insira a sua altura: ")
		leia(altura)
		escreva("Insira o seu peso: ")
		leia(peso)
		IMC = peso / (altura * altura)
		se(IMC < 18.5){
			escreva("Abaixo do peso")
		}senao se(IMC >= 18.5 e IMC < 24.9){
			escreva("Peso normal")
		}senao se(IMC > 25 e IMC < 29.9){
			escreva("Sobrepeso")
		}senao se(IMC > 30){
			escreva("Obesidade")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */