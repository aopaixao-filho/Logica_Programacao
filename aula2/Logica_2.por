programa {

    funcao inicio() {
        real altura
        real peso
        escreva("Altura: ")
        leia(altura)
        escreva("Peso: ")
        leia(peso)
        se (altura < 1.60 e peso <= 58) {
            escreva("Não Passou")
        } senao se (altura < 1.70 e peso < 67) {
            escreva("Turma A")
        } senao se (altura < 1.80 e peso < 81) {
            escreva("Turma B")
        } senao {
            escreva("Turma C")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */