programa
{
	
	funcao inicio()
	{
		inteiro quantidade_convidados[50]
		real valor_a_pagar = 120.00
		inteiro convidados = 0

		escreva("MENU DE OPÇÕES")
		para(inteiro i = 0; i <= 50; i++){
		escolha(convidados){
			caso 1: escreva("Insira o nome do convidado: ")
					leia(nome)
			pare
			caso 2: escreva("Aqui está a lista dos caonvidados: ", nome[i]) 
			pare
			caso contrario: escreva("contrario")
			pare
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */