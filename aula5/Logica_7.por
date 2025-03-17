programa
{
    inclua biblioteca Matematica --> M

    inteiro numero1
    inteiro numero2
    inteiro opcao

    funcao real potenciaBiblioteca(real base, real expoente) {
        retorne M.potencia(base, expoente)
    }

    funcao inteiro potenciaMultiplicacao(inteiro base, inteiro expoente) {
        inteiro resultado = 1
        para (inteiro i = 0; i < expoente; i++) {
            resultado = resultado * base
        }
        retorne resultado
    }

    funcao inicio()
    {
        escreva("Insira o primeiro número (base): ")
        leia(numero1)

        escreva("Insira o segundo número (expoente): ")
        leia(numero2)

        escreva("Escolha o método de cálculo:\n")
        escreva("1 - Usar biblioteca Matematica\n")
        escreva("2 - Usar multiplicação repetida\n")
        leia(opcao)

        se (opcao == 1) {
            escreva("Resultado usando biblioteca: ", potenciaBiblioteca(numero1, numero2))
        }
        senao se (opcao == 2) {
            escreva("Resultado usando multiplicação repetida: ", potenciaMultiplicacao(numero1, numero2))
        }
        senao {
            escreva("Opção inválida!")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 481; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */