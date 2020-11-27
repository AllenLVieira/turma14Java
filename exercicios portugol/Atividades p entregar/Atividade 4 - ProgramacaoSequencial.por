// Recebe A,B e C, e calcula D = (R+S)/2, sendo R = (A+B)^2 e  = (B + C)^2

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro valorA, valorB, valorC
		real valorD, valorR, valorS
		
		escreva("Digite o valor A: ")
		leia(valorA)
		escreva("\nDigite o valor B: ")
		leia(valorB)
		escreva("\nDigite o valor C: ")
		leia(valorC)
		valorR = Matematica.potencia((valorA+valorB), 2)
		valorS = Matematica.potencia((valorB+valorC), 2)
		valorD = (valorR + valorS)/2
		escreva("\nO valor de D equivale a "+valorD+".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */