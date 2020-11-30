programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real pesoTomate, E=0.0, M=0
		const real multaPorQuilo = 4.0
		const real pesoMaximoTomate = 50.0
		escreva("João, quantos quilos de tomate você trouxe hoje? ")
		leia(pesoTomate)
		se(pesoTomate >= 0){
			se(pesoTomate > pesoMaximoTomate){
				E = pesoTomate - pesoMaximoTomate
				M = E * multaPorQuilo
			}
			escreva("\nJoão, você trouxe ", pesoTomate, " quilos de tomate. Com ", Mat.arredondar(E,2), " quilos de excesso, e R$ ", Mat.arredondar(M,2), " reais de multa.")
		}
		senao
		{
			escreva("\nJoão, você digitou um peso inválido. Lembre-se que o peso deve ser maior ou igual a zero.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */