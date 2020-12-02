// Regra de negócio: Ler e armazenar valores numamatriz 3x3, mostrar a soma dos vavlores e soma  da diagonal principal

programa
{
	
	funcao inicio()
	{
		const inteiro TAMANHO = 3
		real matriz[TAMANHO][TAMANHO], somaDiagonal = 0.0, somaTotal = 0.0
		

		escreva("Digite os valores da matriz:\n")
		para(inteiro i = 0; i < TAMANHO; i++){
			para(inteiro j = 0; j<TAMANHO;j++){
				escreva("Elemento M[",i+1,"][",j+1,"]")
				leia(matriz[i][j])
				se(i == j){
					somaDiagonal += matriz[i][j]
				}
				somaTotal += matriz[i][j]
			}
		}

		escreva("A matriz digitada foi:\n")
		para(inteiro i = 0; i < TAMANHO; i++){
			para(inteiro j = 0; j<TAMANHO;j++){
				escreva("[",matriz[i][j],"]")
			}
			escreva("\n")
		}
		escreva("\nCom soma total dada por: ",somaTotal)
		escreva("\nCom soma da diagonal principal dada por: ",somaDiagonal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 652; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */