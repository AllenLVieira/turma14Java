programa
{
	
	funcao inicio()
	{
		const inteiro MAXIMO = 3
		inteiro vetor[MAXIMO], matriz[MAXIMO][MAXIMO]

		para(inteiro i = 0; i < MAXIMO; i++){
			escreva("\nDigite o [",i+1,"] elemento do vetor: ")
			leia(vetor[i])
		}

		para(inteiro i = 0; i < MAXIMO; i++){	
			para(inteiro j = 0; j < MAXIMO; j++){
				escreva("\nDigite o [",i+1,"][",j+1,"] elemento da matriz: ")
				leia(matriz[i][j])
			}
		}	
		
		limpa()
		escreva("\n Vetor digitado\n")
		para(inteiro i = 0; i < MAXIMO; i++){
			escreva((vetor[i]),"\t")
		}
		escreva("\n Matriz digitada\n")
		para(inteiro i = 0; i < MAXIMO; i++){	
			para(inteiro j = 0; j < MAXIMO; j++){
				escreva(matriz[i][j],"\t")
			}
			escreva("\n")
		}	

		para(inteiro i = 0; i < MAXIMO; i++){
			para(inteiro j = 0; j < MAXIMO; j++){
				matriz[i][j] = vetor[i]*matriz[i][j]
			}
		}
		escreva("\n Matriz final\n")
		para(inteiro i = 0; i < MAXIMO; i++){	
			para(inteiro j = 0; j < MAXIMO; j++){
				escreva(matriz[i][j],"\t")
			}
			escreva("\n")
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 863; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */