// Receber quantidade dias e retornar ano, mes e dias considerando que 1 ano tem 365 dias, e 1 mes tem 30 dias

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro anosResultado, mesesResultado, diasUsuario, diasResultado
		
		escreva("Digite a quantidade de dias que você quer converter: ")
		leia(diasUsuario)
		anosResultado = Matematica.arredondar(diasUsuario/365, 0)
		mesesResultado = Matematica.arredondar((diasUsuario%365)/30, 0)
		diasResultado = (diasUsuario%365)%30
		escreva("Você tem ",anosResultado," ano(s), ",mesesResultado," mes(s) e ",diasResultado," dia(s) de vida.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 607; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */