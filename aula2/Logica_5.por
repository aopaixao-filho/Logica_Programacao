programa
{
	
	funcao inicio()
	{
		inteiro numero1
		inteiro numero2
		cadeia nome
		escreva("\nInsira o nome do sujeito:\t")
		leia(nome)
		escreva("\nInsira um numero aleatorio\t")
		leia(numero1)
		escreva("\nInsira um segundo numero aleatorio:\t")
		leia(numero2)

		se(numero1 == numero2){
			escreva("Não foi dessa vez")
		}
		se(numero1 >= numero2){
			escreva("Tente outra vez")
		}
		se(numero1 <= numero2){
			escreva("Agora sim!")
		}
		senao(
			escreva("Número inválido"))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */