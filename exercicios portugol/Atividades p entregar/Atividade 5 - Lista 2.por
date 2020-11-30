programa
{
	
	funcao inicio()
	{
		const real limiteInferiorAceitavel = 0.05
		const real limiteSuperiorAceitavel =0.25
		real indicePoluicaoAtual
		escreva("Digite o índice de poluição registrado: ")
		leia(indicePoluicaoAtual)
		se(indicePoluicaoAtual>=0){
			se(indicePoluicaoAtual >= limiteInferiorAceitavel e indicePoluicaoAtual <= limiteSuperiorAceitavel){
				escreva("\nOs grupos estão dentro dos parâmetros aceitáveis de poluição. Portanto, podem continuar atuando.")
			}
			senao se(indicePoluicaoAtual >= 0.3 e indicePoluicaoAtual < 0.4){
				escreva("\nAs indústrias do 1º grupo devem suspender suas atividades imediatamente.")
			}
			senao se(indicePoluicaoAtual >= 0.4 e indicePoluicaoAtual < 0.5){
				escreva("\nAs indústrias do 1º e 2º grupo devem suspender suas atividades imediatamente.")
			}
			senao se(indicePoluicaoAtual >= 0.5){
				escreva("\nTodas as indústrias devem suspender suas atividades imediatamente.")
			}
			senao{
				escreva("\nOs grupos estão poluindo menos que o limite aceitável. Parabéns!")
			}
		}
		senao{
				escreva("\nÍndice inválido.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1041; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */