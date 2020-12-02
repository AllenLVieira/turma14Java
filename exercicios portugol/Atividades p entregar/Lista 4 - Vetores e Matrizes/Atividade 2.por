// regra de negócio: armazenar 10 resultados do dado, mostrar os resultadoDado, média e frequencia maior

programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		const inteiro TAMANHO = 10
		inteiro resultadoDado[TAMANHO],ocorrencias[6] = {[0,0,0,0,0,0]}, somaAux = 0
		real media
		inteiro maior = -99

		para(inteiro i = 0; i < TAMANHO; i++){
			resultadoDado[i] = Util.sorteia(1, 6)
			ocorrencias[resultadoDado[i]-1] = ocorrencias[resultadoDado[i]-1] + 1 //soma em ocorrencia
			somaAux += resultadoDado[i]
			se(resultadoDado[i]>maior){
				maior = resultadoDado[i]
			}
		}
		
		media = somaAux/TAMANHO
		
		
		
		
		//limpa()
		escreva ("Resultados das jogadas de dado:\n\n")
		para(inteiro i = 0; i < TAMANHO; i++)
		{
			escreva (resultadoDado[i], "\n")
		}

		escreva("A média dos valores obtidos no dado foi: ",media)
		escreva("\nA face de maior valor nessas 10 jogadas foi ",maior, " com ",ocorrencias[maior-1]," repetições.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */