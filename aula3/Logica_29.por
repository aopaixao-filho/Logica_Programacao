programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t

	inteiro quadrado_x = 390, quadrado_y = 290

	funcao controle(){
		se(t.tecla_pressionada(t.TECLA_A)){
			quadrado_x--
		}
		se(t.tecla_pressionada(t.TECLA_D)){
			quadrado_x++
		}
		se(t.tecla_pressionada(t.TECLA_W)){
			quadrado_y--
		}
		se(t.tecla_pressionada(t.TECLA_S)){
			quadrado_y++
		}
	}
	
	funcao desenhar(){
		g.definir_cor(g.COR_PRETO)
		g.limpar()
		g.definir_cor(g.COR_VERDE)
		g.desenhar_texto(20, 50, "Movimente o quadrado com W A S D")
		
		g.renderizar()
	}

	
	funcao inicio(){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(900, 740)
		enquanto(nao t.tecla_pressionada(t.TECLA_ESC)){
			controle()
			desenhar()
		}
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */