// Ler custo fabrica e mostrar custo consumidor

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real custoFabrica, custoConsumidor
		const real imposto = 0.45
		const real porcentagemDistribuidor = 0.28
		escreva("Qual o custo de fábrica do carro? R$ ")
		leia(custoFabrica)
		custoConsumidor  = custoFabrica + (custoFabrica*porcentagemDistribuidor) + imposto*custoFabrica
		escreva("\nO custo para o consumidor é de R$ ",Matematica.arredondar(custoConsumidor,2), " reais.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */