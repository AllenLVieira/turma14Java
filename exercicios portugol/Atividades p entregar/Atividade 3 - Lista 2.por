programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real primeiroNum, segundoNum, terceiroNum, quartoNum
		escreva("Digite o primeiro número: ")
		leia(primeiroNum)
		escreva("\nDigite o segundo número: ")
		leia(segundoNum)
		escreva("\nDigite o terceiro número: ")
		leia(terceiroNum)
		escreva("\nDigite o quarto número: ")
		leia(quartoNum)
		se(Mat.potencia(terceiroNum,2.0) >= 1000.0){
			escreva("\nO número ", terceiroNum," ao quadrado é ",Mat.arredondar(Mat.potencia(terceiroNum,2.0),2))
		}
		senao{
			escreva("\nO número ", primeiroNum," ao quadrado é ",Mat.arredondar(Mat.potencia(primeiroNum,2.0),2))
			escreva("\nO número ", segundoNum," ao quadrado é ",Mat.arredondar(Mat.potencia(segundoNum,2.0),2))
			escreva("\nO número ", terceiroNum," ao quadrado é ",Mat.arredondar(Mat.potencia(terceiroNum,2.0),2))
			escreva("\nO número ", quartoNum," ao quadrado é ",Mat.arredondar(Mat.potencia(quartoNum,2.0),2))
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 789; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */