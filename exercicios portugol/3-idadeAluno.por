// Objetivo: Receber o NOME, ANO NASSCIMENTO do usuario e dar boas vindas e ssua idade é mais sou menos

programa
{
	
	funcao inicio()
	{
		cadeia nomeUsuario
		inteiro anoNascimentoUsuario
		inteiro anoAtual = 2020
		inteiro idadeUsuario
		escreva("Olá, digite o seu nome: ")
		leia(nomeUsuario)
		escreva("\nQual ano você nasceu (4 dígitos):")
		leia(anoNascimentoUsuario)
		idadeUsuario = anoAtual - anoNascimentoUsuario
		escreva("\nBem vindo "+nomeUsuario+", você tem aproximadamente "+idadeUsuario+" e é um alune da Generation Brasil :D")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 506; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */