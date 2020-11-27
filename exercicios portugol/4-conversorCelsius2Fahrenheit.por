// Objetivo: Receber o grau Celsius e converter para Fahrenheit

programa
{
	
	funcao inicio()
	{
		real grauCelsius
		real grauFahrenheit
		escreva("Digite a temperatura em graus Celsius: ")
		leia(grauCelsius)
		grauFahrenheit = 9*(grauCelsius/5)+32 
		escreva("\nA temperatura em Fahrenheit é "+grauFahrenheit)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */