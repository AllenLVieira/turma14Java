// Regra de negócio: Retornar verdadeiro se for divissivel por 5

programa
{
	
	funcao inicio()
	{
		inteiro numeroUsuario
		escreva("Digite um número inteiro: ")
		leia(numeroUsuario)
		escreva(divisivelPorCinco(numeroUsuario))
	}

	funcao logico divisivelPorCinco(inteiro a)
	{
		se(a%5==0){
			retorne verdadeiro
		}
		senao{
			retorne falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 282; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */