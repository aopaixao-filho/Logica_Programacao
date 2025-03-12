programa
{
    funcao inicio()
    {
        inteiro numero1, numero2, resultado
        cadeia operacao

        escreva("Insira o primeiro número: ")
        leia(numero1)

        escreva("Insira a operação (+, -, *, /): ")
        leia(operacao)

        escreva("Insira o segundo número: ")
        leia(numero2)

        se (operacao == "+") {
            resultado = numero1 + numero2
            escreva(numero1, " + ", numero2, " = ", resultado)
        } senao se (operacao == "-") {
            resultado = numero1 - numero2
            escreva(numero1, " - ", numero2, " = ", resultado)
        } senao se (operacao == "*") {
            resultado = numero1 * numero2
            escreva(numero1, " * ", numero2, " = ", resultado)
        } senao se (operacao == "/") {
            se (numero2 != 0) {
                resultado = numero1 / numero2
                escreva(numero1, " / ", numero2, " = ", resultado)
            } senao {
                escreva("Erro: Divisão por zero não é permitida.")
            }
        } senao {
            escreva("Operação inválida.")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 52; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */