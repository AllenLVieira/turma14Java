// Leia tempo em segundos e mostre em horas, minutos e segundos

programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro segundosUsuario, horasResultado, minutosResultado, segundosResultado
		escreva("Digite a quantidade de segundos do evento: ")
		leia(segundosUsuario)
		horasResultado = segundosUsuario/3600
		minutosResultado = (segundosUsuario%3600)/60
		segundosResultado = (segundosUsuario%3600)%60
		escreva("Você tem ",horasResultado," hora(s), ",minutosResultado," minuto(s) e ",segundosResultado," segundo(s) do evento.")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 374; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */