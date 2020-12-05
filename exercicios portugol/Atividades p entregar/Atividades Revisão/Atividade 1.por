/*
 * Receber um valor de etiqueta e calcular o preço final
 */

programa
{
	
	funcao inicio()
	{
		real precoEtiqueta, precoFinal
		inteiro opcao
		escreva("Qual o valor de etiqueta do produto? R$ ")
		leia(precoEtiqueta)
		escreva("\n[1] - À vista em dinheiro ou cheque")
		escreva("\n[2] - À vista no cartão de crédito")
		escreva("\n[3] - Parcelado em duas vezes")
		escreva("\n[4] - Parcelado em três vezes")
		escreva("\nDigite qual opção de pagamento: ")
		leia(opcao)
		limpa()
		escolha(opcao)
		{
			caso 1:
				precoFinal = validarPrecoFinal(precoEtiqueta,-0.2)
				escreva("o preço de R$ ",precoEtiqueta," está saindo por R$",precoFinal)
			pare
			caso 2:
				precoFinal = validarPrecoFinal(precoEtiqueta,-0.15)
				escreva("o preço de R$ ",precoEtiqueta," está saindo por R$",precoFinal)
			pare
			caso 3:
				precoFinal = validarPrecoFinal(precoEtiqueta,0.0)
				escreva("O valor final da sua compra é R$ ",precoFinal)
			pare
			caso 4:
				precoFinal = validarPrecoFinal(precoEtiqueta,0.1)
				escreva("O valor final da sua compra é R$ ",precoFinal)
			pare
			caso contrario:
				escreva("\nValor digitado foi incorreto.")
		}
		
	}

	funcao real validarPrecoFinal(real preco, real porcentagem){
		retorne (preco * (1+porcentagem))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 801; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */