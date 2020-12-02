programa
{
	inclua biblioteca Texto
	
	funcao inicio()
	{
		cadeia resultado
		inteiro contSP=0, contCOR=0, contPAL=0, contSFC=0
		
 		para (inteiro rodada=1 ; rodada <=4; rodada++)
 		{
 			escreva("rodada ", rodada)
 			escreva("\n Corithians Ganhou[G]/Perdeu[P]/Empatou[E]")
 			faca{
 				leia (resultado)
 				resultado = Texto.caixa_alta(resultado)
 			} enquanto ( (resultado != "G") e (resultado != "P") e (resultado != "E"))

 			contCOR += retornaPontos(resultado)
 			
 			escreva("\n SãO Paulo Ganhou[G]/Perdeu[P]/Empatou[E]")
 			faca{
 				leia (resultado)
 				resultado = Texto.caixa_alta(resultado)
 			} enquanto ( (resultado != "G") e (resultado != "P") e (resultado != "E"))

 			contSP += retornaPontos(resultado)
 			escreva("\n Palmeiras Ganhou[G]/Perdeu[P]/Empatou[E]")
 			faca{
 				leia (resultado)
 				resultado = Texto.caixa_alta(resultado)
 			} enquanto ( (resultado != "G") e (resultado != "P") e (resultado != "E"))

 			contPAL += retornaPontos(resultado)
 			escreva("\n Santos Ganhou[G]/Perdeu[P]/Empatou[E]")
 			faca{
 				leia (resultado)
 				resultado = Texto.caixa_alta(resultado)
 			} enquanto ( (resultado != "G") e (resultado != "P") e (resultado != "E"))

 			contSFC += retornaPontos(resultado)
 		}
 		limpa()
 		escreva("Corinthians: ", contCOR)
 		escreva("\nPalmeiras: ", contPAL)
 		escreva("\nSão Paulo: ", contSP)
 		escreva("\nSantos: ", contSFC)
 		
	}
	funcao inteiro retornaPontos(cadeia status)
	{
		se (status== "G")
 		{
 			retorne 3
 		}
 		senao se( status == "P")
 		{
 			retorne 0
 		}
 		senao se( status == "E")
 		{
 			retorne 1
 		}
 		senao{
 			retorne 0
 		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {resultado, 7, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */