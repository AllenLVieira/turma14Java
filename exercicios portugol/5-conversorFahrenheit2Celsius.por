// Objetivo: Receber o grau Fahrenheit e converter para Celsius

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real grauCelsius
		real grauFahrenheit
		escreva("Digite a temperatura em graus Fahrenheit: ")
		leia(grauFahrenheit)
		grauCelsius = 5*(grauFahrenheit-32)/9
		escreva("\nA temperatura em Fahrenheit é "+Matematica.arredondar(grauCelsius, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */