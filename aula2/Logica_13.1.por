programa
{
	
	funcao inicio()
	{
		inteiro numero1
		inteiro numero2
		inteiro numero3
		inteiro numero4
		inteiro soma
		inteiro menos
		inteiro vezes

		escreva("Insira o numero 1: ")
		leia(numero1)
		escreva("Insira o numero 2: ")
		leia(numero2)
		escreva("Insira o numero 3: ")
		leia(numero3)
		escreva("Insira o numero 4: ")
		leia(numero4)
		escreva("Insira a subtracao: 1,2,3,4,5,6: ")
		leia(menos)
		escreva("Escolha uma soma: 1,2,3,4,5,6: ")
		leia(soma)
		escreva("Escolha uma multiplicacao: 1,2,3,4,5,6: ")
		leia(vezes)

			escolha(soma){

			caso 1: escreva(numero1 + numero2)
			pare
			caso 2: escreva(numero3 + numero4)
			pare
			caso 3: escreva(numero3 + numero1)
			pare
			caso 4: escreva(numero2 + numero4)
			pare
			caso 5: escreva(numero2 + numero3)
			pare
			caso 6: escreva(numero1 + numero4)
			pare
			caso contrario: escreva("Soma invalida")
			pare
		}
		escolha(menos){

			caso 1: escreva(numero1 - numero2)
			pare
			caso 2: escreva(numero3 - numero4)
			pare
			caso 3: escreva(numero3 - numero1)
			pare
			caso 4: escreva(numero2 - numero4)
			pare
			caso 5: escreva(numero2 - numero3)
			pare
			caso 6: escreva(numero1 - numero4)
			pare
			caso contrario: escreva("Subtracao invalida")
			pare

		
		}
		escolha(vezes){

			caso 1: escreva(numero1 * numero2)
			pare
			caso 2: escreva(numero3 * numero4)
			pare
			caso 3: escreva(numero3 * numero1)
			pare
			caso 4: escreva(numero2 * numero4)
			pare
			caso 5: escreva(numero2 * numero3)
			pare
			caso 6: escreva(numero1 * numero4)
			pare
			caso contrario: escreva("Multiplicacao invalida")
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 560; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */