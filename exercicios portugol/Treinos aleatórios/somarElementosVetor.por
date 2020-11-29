programa
{
	
	funcao inicio()
	{
		inteiro quantidade, vetor[99]
		escreva("Digite quanto números que digitar: ")
		leia(quantidade)
		para (inteiro posicao = 0; posicao < quantidade; posicao++)
		{
			escreva("Digite o ",posicao+1, " número: ")
			leia(vetor[posicao])
		}
		escreva(somarVetor(quantidade, vetor))
	}
	funcao inteiro somarVetor(inteiro q, inteiro lista[])
	{
		inteiro soma = 0
		para(inteiro i = 0; i < q; i++)
		{
			soma = soma + lista[i] 
		}
		retorne soma
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 202; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */