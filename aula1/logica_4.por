programa
{
	
	funcao inicio()
	{
		inteiro tempo
		inteiro hora
		inteiro minuto
		inteiro segundos
		inteiro resto
		escreva("insira o tempo em segundos:")
		leia(tempo)
			hora = tempo /3600
			resto = tempo  %3600
			minuto = resto /60
			segundos = resto %60
		escreva("A ordem será:", hora, ":", minuto, ":", segundos)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */