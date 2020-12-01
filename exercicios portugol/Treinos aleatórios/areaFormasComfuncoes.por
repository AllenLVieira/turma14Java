// Regra de negócio: cálculo de área de figuras geométricas (circulo, triangulo, retangulo) utilizando funçõess
programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		inteiro opcao
		real base, altura, raio
		escreva("Digite  1 para círculo\n\t2 para triângulo\n\t3 para retângulo\n\t0 para finalizar: ")
		leia(opcao)
		escolha (opcao)
		{
		caso 0:
			escreva("\nObrigado por utilizar nosso serviço.")
		pare

		caso 1:		//circulo
			escreva("\nDigite o raio do círculo: ")
			leia(raio)
			areaCirculo(raio)
		pare

		caso 2:
			escreva("Digite a base do triângulo: ")
			leia(base)
			escreva("Digite a altura do triângulo: ")
			leia(altura)
			areaTriangulo(base, altura)
		pare

		caso 3:
			escreva("Digite a base do retângulo: ")
			leia(base)
			escreva("Digite a altura do retângulo: ")
			leia(altura)
			areaRetangulo(base, altura)
		pare

		caso contrario:
			escreva("\nCódigo inválido.")
		pare
		}
		
		escreva("\n-------------------------------------")
		escreva("\nFim do Programa")
	}

	funcao areaCirculo(real r){
		real areaForma
		se(r <= 0.0){
			escreva("\nErro: O valor deve ser maior do que 0.")
		}
		senao{
			areaForma = Mat.PI*(Mat.potencia(r, 2.0))
			escreva("\nEsse círculo possui ", Mat.arredondar(areaForma,2), " de área.")
		}
	}

	funcao areaTriangulo(real b, real h){
		real areaForma
		se(b <= 0.0 ou h <= 0.0){
			escreva("\nErro: Os valores devem ser maiores do que 0.")
		}
		senao{
			areaForma = (b*h)/2
			escreva("\nEsse triângulo possui ", Mat.arredondar(areaForma,2), " de área.")
		}
	}

	funcao areaRetangulo(real b, real h){
		real areaForma
		se(b <= 0.0 ou h <= 0.0){
			escreva("\nErro: Os valores devem ser maiores do que 0.")
		}
		senao{
			areaForma = b*h
			escreva("\nEsse retângulo possui ", Mat.arredondar(areaForma,2), " de área.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */