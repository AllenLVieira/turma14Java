programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		inteiro num= 0, soma = 0
		real media
		inteiro contador = 0
		escreva("Digite valores positivos a serem somados.\nCaso queira finalizar, digite um valor negativo")
		enquanto (num >= 0){
			escreva("\nDigite o valor desejado: ")
			leia(num)
			se(num>0){
				soma += num
				contador += 1
			}
			
		}
		media = soma/contador
		//limpa()
		escreva("Quantidade de números digitados: ", contador)
		escreva("\nA soma desses números é: ", soma)
		escreva("\nA média desses números é: ", Mat.arredondar(media,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */