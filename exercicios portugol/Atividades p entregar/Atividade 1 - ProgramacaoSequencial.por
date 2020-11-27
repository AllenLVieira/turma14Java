// Receber anos, meses e dias e retornar total de dias, considerando que 1 ano tem 365 dias, e 1 mes tem 30 dias

programa
{
	
	funcao inicio()
	{
		inteiro anosUsuario, mesesUsuario, diasUsuario, diasTotais
		
		escreva("Digite a quantidade de anos que você tem: ")
		leia(anosUsuario)
		escreva("\nDigite a quantidade de meses que você tem: ")
		leia(mesesUsuario)
		escreva("\nDigite a quantidade de dias que você tem: ")
		leia(diasUsuario)
		diasTotais = 365*anosUsuario + 30*mesesUsuario + diasUsuario
		escreva("\nVocê tem "+diasTotais+" dias de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */