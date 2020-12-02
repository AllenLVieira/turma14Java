// Regra de  negócio: recebeb duas variaveis mostra soma e subtração na M1

programa
{
	
	funcao inicio()
	{
		inteiro N1[4][6], N2[4][6], M1[4][6], M2[4][6]
		escreva("Digite a matriz N1:\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j<6;j++){
				escreva("Elemento N1[",i+1,"][",j+1,"]")
				leia(N1[i][j])
			}
		}
		escreva("Digite a matriz N2:\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j<6;j++){
				escreva("Elemento N2[",i+1,"][",j+1,"]")
				leia(N2[i][j])
			}
		}
		escreva("A matriz de soma M1 é dada por:\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j<6;j++){
				M1[i][j] = N1[i][j] + N2[i][j]
				escreva("[",M1[i][j],"]")
			}
			escreva("\n")
		}
		escreva("\nA matriz de subtração M2 é dada por:\n")
		para(inteiro i = 0; i < 4; i++){
			para(inteiro j = 0; j<6;j++){
				M2[i][j] = N1[i][j] - N2[i][j]
				escreva("[",M2[i][j],"]")
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
 * @POSICAO-CURSOR = 750; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {N1, 8, 10, 2}-{N2, 8, 20, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */