programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade

		escreva("Insira a sua idade:\t")
		leia(idade)

		se(idade >= 10 e idade <= 17){
			escreva("categoria base")
		}senao se(idade >= 18 e idade <= 40){
			escreva("Profissional")
		}senao se(idade < 10){
			escreva("Escolinha")		
		}senao{
			escreva("Master")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */