programa
{
	
	funcao inicio()
	{
		inteiro n, k, num, contador=0
		escreva("Digite quantos números quer ler (Menor que 200): ")
		leia(n)
		escreva("Qual valor quer verificar se tem duplicidade: ")
		leia(k)
		se(n <200){
			inteiro vetor[199]
			para(inteiro i=0; i < n; i++){
				escreva("Digite o ",i+1, "º digito: ")
				leia(vetor[i])
				se(vetor[i] == k){
					contador++
				}
			}
			para(inteiro i=0; i < n; i++){
				se(vetor[i] == k){
					escreva("\nDuplicado na posição [",i+1,"].")
				}
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */