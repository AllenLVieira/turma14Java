// Recebe 2 pontos num plano (ou seja 4 dados x e y) e calcula a distancia

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real pX1, pY1, pX2, pY2, distanciaEntrePontos, auxX, auxY
		escreva("Digite o valor de X do primeiro ponto: ")
		leia(pX1)
		escreva("\nDigite o valor de Y do primeiro ponto: ")
		leia(pY1)
		escreva("Digite o valor de X do segundo ponto: ")
		leia(pX2)
		escreva("\nDigite o valor de Y do segundo ponto: ")
		leia(pY2)
		auxX = Matematica.potencia(pX2 - pX1, 2.0)
		auxY =Matematica.potencia(pY2 - pY1, 2.0)
		distanciaEntrePontos = Matematica.raiz(auxX + auxY, 2.0)
		escreva("\nA distancia entre esses dois pontos no plano é de ",Matematica.arredondar(distanciaEntrePontos,3), " unidades.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 718; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */