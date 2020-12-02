// Regra de negócio: Ler e armazenar 5 notas, mostrar as notas e a maior nota.

programa
{
	
	funcao inicio()
	{
		const inteiro TAMANHO = 5
		real notas[TAMANHO], maiorNota = -99.0

		para(inteiro i = 0; i < TAMANHO; i++){
			escreva("\nDigite a ",i+1," nota:")
			leia(notas[i])
			se(notas[i]>maiorNota){
				maiorNota = notas[i]
			}
		}
		limpa()
		escreva ("Notas:\n")
		
		para(inteiro i = 0; i < TAMANHO; i++)
		{
			escreva (notas[i], "\n")
		}
		escreva ("A maior nota foi: ",maiorNota)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 193; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */