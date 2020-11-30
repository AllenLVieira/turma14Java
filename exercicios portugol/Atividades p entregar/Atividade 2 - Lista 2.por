programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real C,N, E=0.0
		const real salarioHora = 10.0
		const real limiteHoras = 50.0
		const real salarioExtra = 20.0 
		real salarioTotal
		escreva("Digite seu código de funcionario: ")
		leia(C)
		escreva("\nDigite quantas horas trabalhou:  ")
		leia(N)
		se(N >= 0){
			se(N > limiteHoras){
				E = (N - limiteHoras)*salarioExtra
				salarioTotal = limiteHoras*salarioHora + E
			}
			senao{
				salarioTotal = N*salarioHora
			}
			escreva("\n",C," você trabalhou ", N, " horas. E receberá R$ ", Mat.arredondar(salarioTotal,2), " de salário total, sendo R$ ", Mat.arredondar(E,2), " de hora extra.")
		}
		senao
		{
			escreva("\n",C," você digitou uma quantidade de horas inválida. Lembre-se que as horas trabalhadas devem ser maior ou igual a zero.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 88; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */