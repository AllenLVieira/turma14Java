// Regra de negócio: Recebe probabilidade, premio e custo e retorna verdadeiro caso a probabilidade * premio > custo

programa
{
	
	funcao inicio()
	{
		real probabilidade, premio, custo
		escreva("Digite a probabilidade de vitoria: ")
		leia(probabilidade)
		escreva("Digite o premio da aposta: ")
		leia(premio)
		escreva("Digite o custo da aposta: ")
		leia(custo)
		escreva(apostaVantajosa(probabilidade, premio, custo))
	}

	funcao logico apostaVantajosa(real prob, real premio, real custo)
	{
		se(prob*premio>custo){
			retorne verdadeiro
		}
		senao{
			retorne falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */