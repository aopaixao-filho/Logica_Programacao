programa
{
    funcao inicio()
    {
        cadeia nome
        real n1, n2, media, calculo_faltas
        inteiro faltas
        inteiro totalAulas = 50
        caracter confirma

        faca {
            escreva("Nome: ")
            leia(nome)
            escreva("Nota 1: ")
            leia(n1)
            escreva("Nota 2: ")
            leia(n2)
            escreva("Faltas: ")
            leia(faltas)

            media = (n1 + n2) / 2
            calculo_faltas = (faltas * 100) / totalAulas

            escreva("Média: ", media, "\n")

            se (media >= 7 e calculo_faltas <= 25) {
                escreva("Aprovado\n")
            } senao {
                escreva("Reprovado\n")
            }
            escreva("Deseja continuar? (S/n): ")
            leia(confirma)
        } enquanto (confirma == 'S' ou confirma == 's')
        escreva("Programa encerrado.\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 848; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */