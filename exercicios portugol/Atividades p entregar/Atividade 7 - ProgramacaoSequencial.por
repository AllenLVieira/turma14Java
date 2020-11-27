// Recebe 4 coeficientes, e os dois resultadoss das equações relacionadas ao sistema linear  e calcular X e Y

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real coefA, coefB, resultadoEq1, coefD,coefE,resultadoEq2, resultadoX, resultadoY
		escreva("Digite o coeficiente A do primeiro ponto: ")
		leia(coefA)
		escreva("\nDigite o coeficiente B do primeiro ponto: ")
		leia(coefB)
		escreva("\nDigite o resultado da primeira equação: ")
		leia(resultadoEq1)
		escreva("\nDigite o coeficiente D do segundo ponto: ")
		leia(coefD)
		escreva("\nDigite o coeficiente E do segundo ponto: ")
		leia(coefE)
		escreva("\nDigite o resultado da segunda equação: ")
		leia(resultadoEq2)
		resultadoX = (resultadoEq1*coefE - coefB*resultadoEq2)/(coefA*coefE - coefB*coefD)
		resultadoY = (coefA*resultadoEq2 - resultadoEq1*coefD)/(coefA*coefE - coefB*coefD)
		escreva("\nO valor de X é de ",Matematica.arredondar(resultadoX,2), "e o valor de Y é de ",Matematica.arredondar(resultadoY,2),"!")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 107; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */