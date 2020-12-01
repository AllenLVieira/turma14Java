// Regra de negócio: cálculo de área do retangulo

programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real baseRetangulo, alturaRetangulo, areaRetangulo
		escreva("Digite a base do retângulo: ")
		leia(baseRetangulo)
		escreva("Digite a altura do retângulo: ")
		leia(alturaRetangulo)
		se(baseRetangulo <= 0.0 ou alturaRetangulo <= 0.0){
			escreva("\nErro: Os valores devem ser maiores do que 0.")
		}
		senao{
			areaRetangulo = baseRetangulo*alturaRetangulo
			escreva("\nEsse retângulo possui ", areaRetangulo, " de área.")
		}
		escreva("\n-----------------------------------")
		escreva("\nFim do Programa")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 50; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */