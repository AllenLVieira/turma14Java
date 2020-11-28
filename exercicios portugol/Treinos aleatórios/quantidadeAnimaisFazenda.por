// Regra de negócio: Recebe quantidadeGalinhas, quantidadeVacaso e quantidadePorcos e retorna quantidade de patas

programa
{
	
	funcao inicio()
	{
		inteiro quantidadeGalinhas, quantidadeVacas, quantidadePorcos
		escreva("Digite a quantidade de galinhas: ")
		leia(quantidadeGalinhas)
		escreva("Digite o quantidade de vacas: ")
		leia(quantidadeVacas)
		escreva("Digite o quantidade de porcos: ")
		leia(quantidadePorcos)
		escreva(contarPatas(quantidadeGalinhas, quantidadeVacas, quantidadePorcos))
	}

	funcao inteiro contarPatas(inteiro g, inteiro v, inteiro p)
	{
		retorne (2*g + 4*v + 4*p)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 600; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */