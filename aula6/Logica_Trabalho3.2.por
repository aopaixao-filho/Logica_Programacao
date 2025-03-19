programa
{
    // Constantes
    const real VALOR_CONSULTA_OUTRAS = 100.0
    const real VALOR_CONSULTA_PEDIATRIA = 150.0
    const real VALOR_INTERNACAO = 500.0
    const inteiro TOTAL_QUARTOS = 20

    // Variáveis globais
    inteiro total_consultas = 0
    real faturamento_consultas = 0.0
    inteiro total_internacoes = 0
    real faturamento_internacoes = 0.0
    logico quartos_ocupados[TOTAL_QUARTOS]
    cadeia nomes_quartos[TOTAL_QUARTOS]

    // Função principal
    funcao inicio()
    {
        // Inicializa os arrays
        para (inteiro i = 0; i < TOTAL_QUARTOS; i++)
        {
            quartos_ocupados[i] = falso
            nomes_quartos[i] = ""
        }

        // Loop principal do programa
        enquanto (verdadeiro)
        {
            escreva("\nHOSPITAL - XPTO\n")
            escreva("----------------------------------\n")
            escreva("1-Consulta Ambulatorial\n")
            escreva("2-Internacao\n")
            escreva("3-Listar Quartos\n")
            escreva("4-Faturamento\n")
            escreva("5-Sair do Programa\n")
            escreva("----------------------------------\n")
            escreva("Escolha uma opcao: ")
            inteiro opcao
            leia(opcao)
            
            escolha (opcao)
            {
                caso 1:
                    realizarConsulta()
                    pare
                caso 2:
                    realizarInternacao()
                    pare
                caso 3:
                    listarQuartos()
                    pare
                caso 4:
                    exibirFaturamento()
                    escreva("\nSaindo do programa...\n")
                    pare // Finaliza o programa
                caso 5:
                    escreva("\nSaindo do programa...\n")
                    pare // Finaliza o programa
                caso contrario:
                    escreva("\nOpcao invalida! Tente novamente.\n")
            }
        }
    }

    // Função para realizar consulta
    funcao realizarConsulta()
    {
        cadeia nome, telefone, especialidade
        escreva("Nome do paciente: ")
        leia(nome)
        escreva("Telefone: ")
        leia(telefone)
        escreva("Especialidade da consulta: ")
        leia(especialidade)
        
        real valor_consulta = VALOR_CONSULTA_OUTRAS
        se (especialidade == "Pediatria"){
            valor_consulta = VALOR_CONSULTA_PEDIATRIA
        
        total_consultas = total_consultas + 1
        faturamento_consultas = faturamento_consultas + valor_consulta
        }
        escreva("Consulta realizada com sucesso! Valor: R$", valor_consulta, "\n")
    }

    // Função para realizar internação
    funcao realizarInternacao()
    {
        inteiro quarto
        cadeia nome, telefone
        
        escreva("Informe o numero do quarto (1-20): ")
        leia(quarto)
        
        se (quarto < 1 ou quarto > TOTAL_QUARTOS){
            escreva("Quarto invalido!\n")
            retorne
        }
        
        se (quartos_ocupados[quarto - 1]){
            escreva("Quarto Ocupado!\n")
        }
        senao
        {
            escreva("Nome do paciente: ")
            leia(nome)
            escreva("Telefone: ")
            leia(telefone)
            
            quartos_ocupados[quarto - 1] = verdadeiro
            nomes_quartos[quarto - 1] = nome
            total_internacoes = total_internacoes + 1
            faturamento_internacoes = faturamento_internacoes + VALOR_INTERNACAO
            
            escreva("Quarto reservado com sucesso!\n")
        }
    }

    // Função para listar quartos
    funcao listarQuartos()
    {
        escreva("\nLISTA DE QUARTOS\n")
        escreva("----------------------------------\n")
        para (inteiro i = 0; i < TOTAL_QUARTOS; i++)
        {
            se (quartos_ocupados[i]){
                escreva("Quarto ", i + 1, " - Ocupado (", nomes_quartos[i], ")\n")
            }senao{
                escreva("Quarto ", i + 1, " - Disponivel\n")
            }
        }
    }

    // Função para exibir faturamento
    funcao exibirFaturamento()
    {
        escreva("\nFATURAMENTO\n")
        escreva("----------------------------------\n")
        escreva("Numero de consultas: ", total_consultas, "\n")
        escreva("Faturamento de consultas: R$", faturamento_consultas, "\n")
        escreva("Numero de internacoes: ", total_internacoes, "\n")
        escreva("Faturamento de internacoes: R$", faturamento_internacoes, "\n")
        escreva("Faturamento total: R$", faturamento_consultas + faturamento_internacoes, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 910; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */