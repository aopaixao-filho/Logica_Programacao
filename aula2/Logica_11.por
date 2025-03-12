programa
{
	
	funcao inicio()
	{
		inteiro nota1, nota2, nota3, nota4
		real media
		escreva("Insira a nota 1: ")
		leia(nota1)
		escreva("\nInsira a nota 2: ")
		leia(nota2)
		escreva("\nInsira a nota 3: ")
		leia(nota3)
		escreva("\nInsira a nota 4: ")
		leia(nota4)

		media = (nota1 + nota2 + nota3 + nota4) /2

		se(media < 7){
			escreva("Reprovado")
		}senao se(media > 7){
			escreva("Aprovado")
		}
		senao(escreva("Notas inválidas"))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */