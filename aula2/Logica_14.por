programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade

		escreva("Insira o seu nome:")
		leia(nome)
		escreva("Insira a sua idade::")
		leia(idade)

		se(idade >= 65){
			escreva("Você tem direito a fila preferencial")
		} senao {
			cadeia condicao

			escreva("Você tem alguma condicao especial?\nCaso sim, digite-a (Gestante ou Deficiente)")
			leia(condicao)

			se(condicao == "Gestante" ou condicao == "Deficiente"){
				escreva("Você tem direito a fila preferencial")
			}senao {
				escreva("Você irá para a fila comum")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */