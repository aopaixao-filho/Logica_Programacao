programa
{
	
	funcao inicio()
	{
		inteiro salario[3]
		inteiro aumento = 0

		para(inteiro i = 0; i <= 2000; i++){
		escreva("Insira 3 salários: ")
		leia(salario[i])
		aumento = salario[i] * 1.10
	}
		para(inteiro i = 0; i > 2000; i++){
			escreva("Seu salário é", salario[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */