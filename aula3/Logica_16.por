programa
{
	
	funcao inicio()
	{
		inteiro total = 0
		para(inteiro i = 1; i <= 100; i++){
		total += i
		escreva("Soma parcial: ", total, " (", i, " + ", total - i, ")\n")
		}
		
		escreva("A soma dos 100 primeiros números é ", total)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */