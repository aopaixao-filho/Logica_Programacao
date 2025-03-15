programa
{
	
	funcao inicio()
	{
		cadeia matriz[3][2] = {{"Alexandre", "João"},
						   {"Marcela", "Anna"},
						   {"Alexandre", "Jonas"}}


		para(inteiro i = 0; i < 3; i++){
			para(inteiro j = 0; j < 2; j++){
				escreva(matriz[i][j])
				se(j == 0){
					escreva(",")
				}
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 6, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */