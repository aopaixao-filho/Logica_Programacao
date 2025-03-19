programa
{
    funcao inicio()
    {
        inteiro numero
        escreva("Número: ")
        leia(numero)
        escreva("O fatorial de ", numero, " é: ", fatorial(numero))
    }

    funcao inteiro fatorial(inteiro n)
    {
        inteiro resultado = 1
        para (inteiro i = 2; i <= n; i++) {
            resultado = resultado * i
        }
        retorne resultado
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */