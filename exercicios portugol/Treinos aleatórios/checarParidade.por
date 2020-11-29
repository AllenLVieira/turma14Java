programa
{
	
	funcao inicio()
	{
		inteiro numUsuario
		escreva("Digite um número: ")
		leia(numUsuario)
		escreva(checarParidade(numUsuario))
	}
	funcao cadeia checarParidade(inteiro num)
	{
		se(num%2==0){
			retorne "par"
		}
		senao{
			retorne "ímpar"
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 265; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */