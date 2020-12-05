programa
{
	
	funcao inicio()
	{
		inteiro num
		inteiro vetorIntervalos[4] = {0,0,0,0}
		escreva("Digite valores, e quando quiser parar digite um valor negativo.\n")
		faca{
			leia(num)
			se(num >= 0 e num <= 25){
				vetorIntervalos[0]++
			}
			senao se(num >= 26 e num <= 50){
				vetorIntervalos[1]++
			}
			senao se(num >= 51 e num <= 75){
				vetorIntervalos[2]++
			}
			senao se(num >= 76){
				vetorIntervalos[3]++
			}
		} enquanto(num >= 0)
		//limpa()
		escreva("De 0 a 25, tiveram ",vetorIntervalos[0]," valores.")
		escreva("\nDe 26 a 50, tiveram ",vetorIntervalos[1]," valores.")
		escreva("\nDe 51 a 75, tiveram ",vetorIntervalos[2]," valores.")
		escreva("\nDe 76+, tiveram ",vetorIntervalos[3]," valores.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 405; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */