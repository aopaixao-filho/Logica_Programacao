programa
{
	
	funcao inicio()
	{
		cadeia nome, senha
		enquanto(verdadeiro){
			escreva("Insira seu nome: ")
			leia(nome)
			escreva("Insira sua senha: ")
			leia(senha)

			se(nome == "Alexandre" e senha == ""){
				escreva("Bem vindo!")
				pare
			} senao {
				escreva("\nAcesso negado, tente novamente!\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */