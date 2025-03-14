programa
{
	inclua biblioteca Matematica --> mat
    funcao inicio()
    {
        real salario[3]
        real aumento[3]

        escreva("Insira 3 salários:\n")
        para (inteiro i = 0; i < 3; i++) {
            escreva("Salário ", i + 1, ": ")
            leia(salario[i])

            se (salario[i] <= 2000) {
                aumento[i] = mat.arredondar(salario[i] * 1.10, 2)
            } senao {
                aumento[i] = salario[i]
            }
        }
        escreva("\nSalários com aumento (10% para salários até R$ 2000):\n")
        para (inteiro i = 0; i < 3; i++) {
            escreva("Salário ", i + 1, ": R$", aumento[i], "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 654; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */