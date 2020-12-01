// Regra de negócio: cálculo de área de figuras geométricas (circulo, triangulo, retangulo)
programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		inteiro opcao
		real base, altura, raio, areaForma
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
			se(raio <= 0.0){
				escreva("\nErro: O valor deve ser maior do que 0.")
			}
			senao{
				areaForma = Mat.PI*(Mat.potencia(raio, 2.0))
				escreva("\nEsse círculo possui ", Mat.arredondar(areaForma,2), " de área.")
			}
		pare

		caso 2:
			escreva("Digite a base do triângulo: ")
			leia(base)
			escreva("Digite a altura do triângulo: ")
			leia(altura)
			se(base <= 0.0 ou altura <= 0.0){
				escreva("\nErro: Os valores devem ser maiores do que 0.")
			}
			senao{
				areaForma = (base*altura)/2
				escreva("\nEsse triângulo possui ", Mat.arredondar(areaForma,2), " de área.")
			}
		pare

		caso 3:
			escreva("Digite a base do retângulo: ")
			leia(base)
			escreva("Digite a altura do retângulo: ")
			leia(altura)
			se(base <= 0.0 ou altura <= 0.0){
				escreva("\nErro: Os valores devem ser maiores do que 0.")
			}
			senao{
				areaForma = base*altura
				escreva("\nEsse retângulo possui ", Mat.arredondar(areaForma,2), " de área.")
			}
		pare

		caso contrario:
			escreva("\nCódigo inválido.")
		pare
		}
		
		escreva("\n-------------------------------------")
		escreva("\nFim do Programa")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */