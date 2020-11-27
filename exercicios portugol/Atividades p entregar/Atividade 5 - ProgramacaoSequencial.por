// Recebe 3 notas, e calcula media ponderada com pesos 2, 3 e 5 respectivamente

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real notaA, notaB, notaC, mediaFinal


		escreva("Digite o nota A: ")
		leia(notaA)
		escreva("\nDigite o nota B: ")
		leia(notaB)
		escreva("\nDigite o nota C: ")
		leia(notaC)
		mediaFinal = (2*notaA + 3*notaB + 5*notaC)/(2 + 3 + 5)
		escreva("\nA sua média final é "+Matematica.arredondar(mediaFinal,2)+"!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */