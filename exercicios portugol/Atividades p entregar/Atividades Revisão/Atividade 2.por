programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real peso, altura
		escreva("Digite sua altura em centímetros (Ex: 180): ")
		leia(altura)
		escreva("Digite seu peso em quilogramas (Ex: 85.5): ")
		leia(peso)
		limpa()
		escreva(calculoIMC(peso, altura/100))
	}

	funcao cadeia calculoIMC(real m, real h)
	{
		real R 
		R = (m/Mat.potencia(h,2.0))
		se(R < 18.5){
			retorne ("Você está abaixo do peso ("+Mat.arredondar(R,2)+")")
		}
		senao se(R >= 18.5 e R < 25){
			retorne ("Você está no seu peso normal ("+Mat.arredondar(R,2)+")")
		}
		senao se(R >= 25 e R < 30){
			retorne ("Você está acima do peso ("+Mat.arredondar(R,2)+")")
		}
		senao{
			retorne ("Você está obeso ("+Mat.arredondar(R,2)+")")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 88; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {peso, 7, 7, 4}-{m, 16, 31, 1}-{h, 16, 39, 1}-{R, 18, 7, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */