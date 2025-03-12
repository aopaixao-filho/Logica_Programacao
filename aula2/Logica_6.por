programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro nota1, nota2, nota3
		real media

		escreva("Insira o nome do aluno: ")
		leia(nome)
		escreva("Insira a primeira nota do aluno: ")
		leia(nota1)
		escreva("Insira a segunda nota do aluno: ")
		leia(nota2)
		escreva("Insira a terceira nota do aluno: ")
		leia(nota3)
		media = (nota1 + nota2 + nota3) /2
		escreva("A média deste aluno é:", media, "\n")

		se(media >= 7){
			escreva("Aprovado")
			
		}
		senao se(media <= 5){
			escreva("Reprovado")
		}
		senao{
			escreva("O aluno está de recuperação")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */