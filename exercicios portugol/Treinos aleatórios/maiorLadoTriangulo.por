// Regra de negócio: Encontrar o valor do terceiro lado do triângulo de forma que seja o maior possivel e todos os lados inteiros.

programa
{
	
	funcao inicio()
	{
		inteiro ladoA, ladoB
		escreva("Digite um lado do triângulo: ")
		leia(ladoA)
		escreva("Digite o segundo lado do triângulo: ")
		leia(ladoB)
		escreva(maiorLado(ladoA,ladoB))
	}

	funcao inteiro maiorLado(inteiro a, inteiro b)
	{
		inteiro maxLado
		maxLado = a + b - 1
		retorne maxLado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 230; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */