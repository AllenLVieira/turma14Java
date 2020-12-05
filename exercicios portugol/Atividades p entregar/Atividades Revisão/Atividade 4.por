programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		inteiro n = -1
		real R = 0.0
		para(inteiro d=1; d<= 50; d++){
			n = n + 2
			R = R+  n/d
			escreva(" + ",n,"/",d)
		}
		escreva("\nO resultado dessa soma é: ",Matematica.arredondar(R,2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 178; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */