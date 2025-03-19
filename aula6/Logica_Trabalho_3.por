programa
{
    const inteiro TOTAL_QUARTOS = 20
    const real VALOR_INTERNACAO = 500.00
    const real VALOR_CONSULTA_PEDIATRIA = 150.00
    const real VALOR_CONSULTA_OUTRAS = 120.00
    inteiro opcao
    cadeia nomes_quartos[TOTAL_QUARTOS]
    cadeia telefones_quartos[TOTAL_QUARTOS]
    logico quartos_ocupados[TOTAL_QUARTOS]
    
    inteiro total_internacoes = 0
    inteiro total_consultas = 0
    real faturamento_internacoes = 0
    real faturamento_consultas = 0
    
    funcao inicio()
    {
        enquanto (verdadeiro) {
            escreva("\nHOSPITAL - XPTO")
            escreva("\n----------------------------")
            escreva("\n1-Consulta Ambulatorial")
            escreva("\n2-Internacao")
            escreva("\n3-Listar Quartos")
            escreva("\n4-Faturamento")
            escreva("\n5-Sair do Programa")
            escreva("\n----------------------------")
            escreva("\nEscolha uma opcao: ")
            leia(opcao)
            
            escolha (opcao) {
                caso 1:
                    registrarConsulta()
                caso 2:
                    registrarInternacao()
                caso 3:
                    listarQuartos()
                caso 4:
                    exibirFaturamento()
                caso 5:
                    escreva("\nSaindo do programa...")
                    pare
                caso contrario:
                    escreva("\nOpcao invalida! Tente novamente.")
            }
        }
    }
    
    funcao registrarConsulta()
    {
        cadeia nome, telefone, especialidade
        escreva("\nNome do paciente: ")
        leia(nome)
        escreva("Telefone do paciente: ")
        leia(telefone)
        escreva("Especialidade da consulta: ")
        leia(especialidade)
        
        real valor_consulta

se (especialidade == "Pediatria"){
    valor_consulta = VALOR_CONSULTA_PEDIATRIA
    
}senao{
    valor_consulta = VALOR_CONSULTA_OUTRAS
        total_consultas++
        faturamento_consultas += valor_consulta
}
        
        escreva("\nConsulta registrada com sucesso! Valor: R$", valor_consulta)
    }
    
    funcao registrarInternacao()
    {
        inteiro numero_quarto
        cadeia nome, telefone
        
        escreva("\nDigite o numero do quarto (1-20): ")
        leia(numero_quarto)
        
        se (numero_quarto < 1 ou numero_quarto > TOTAL_QUARTOS) {
            escreva("\nNumero de quarto invalido! Tente novamente.")
            retorne
        }
        
        inteiro indice = numero_quarto - 1
        
        se (quartos_ocupados[indice]) {
            escreva("\nQuarto ocupado!")
        } senao {
            escreva("\nNome do paciente: ")
            leia(nome)
            escreva("Telefone do paciente: ")
            leia(telefone)
            
            nomes_quartos[indice] = nome
            telefones_quartos[indice] = telefone
            quartos_ocupados[indice] = verdadeiro
            
            total_internacoes++
            faturamento_internacoes += VALOR_INTERNACAO
            
            escreva("\nQuarto reservado com sucesso!")
        }
    }
    
    funcao listarQuartos()
    {
        escreva("\nLISTA DE QUARTOS")
        escreva("\n----------------------------")
        para (inteiro i = 0; i < TOTAL_QUARTOS; i++) {
           escreva("\nQuarto ", i+1, " - ")

	se (quartos_ocupados[i]){
    escreva("Ocupado (", nomes_quartos[i], ")")
	}senao{
    escreva("Disponível")
	}

        }
    }
    
    funcao exibirFaturamento()
    {
        real faturamento_total = faturamento_consultas + faturamento_internacoes
        
        escreva("\nFATURAMENTO")
        escreva("\n----------------------------")
        escreva("\nNumero de consultas: ", total_consultas)
        escreva("\nFaturamento de consultas: R$", faturamento_consultas)
        escreva("\nNumero de internacoes: ", total_internacoes)
        escreva("\nFaturamento de internacoes: R$", faturamento_internacoes)
        escreva("\nFaturamento total: R$", faturamento_total)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2769; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */