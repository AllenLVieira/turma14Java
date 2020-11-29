programa
{
	
	funcao inicio()
	{
		inteiro idadeUsuario
		cadeia aux
		logico estaSupervisionado
		escreva("Digite a sua idade: ")
		leia(idadeUsuario)
		escreva("Você está supervisionado S ou N? ")
		leia(aux)
		se(aux == "S" ou aux == "s")
		{
			estaSupervisionado = verdadeiro
		}
		senao
		{
			estaSupervisionado = falso
		}
		escreva(verificarSePodeVer(idadeUsuario, estaSupervisionado))
		
	}

	funcao logico verificarSePodeVer(inteiro idade, logico supervisao)
	{
		se(idade > 14 ou supervisao == verdadeiro)
		{
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
 * @POSICAO-CURSOR = 239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */