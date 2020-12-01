// Regra de negócio: salário e número de filhos de 20 habitantes e calcular média de salário, média de filhos, maior salário
// percentual de salario <100

programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		const inteiro populacao = 20
		inteiro somaFilhos=0
		real salariosPopulacao, quantidadeFilhosPopulacao, mediaSalario=0.0, somaSalario=0.0, mediaFilhos=0.0
		real auxMaiorSalario=0.0, auxSalarioMenor=0.0, porcentagemSalarioMenor = 0.0

		para (inteiro i = 0; i < populacao; i++)
		{
			escreva("Digite o salário do  ",i+1, " habitante: ")
			leia(salariosPopulacao)
			se(salariosPopulacao > auxMaiorSalario){
				auxMaiorSalario = salariosPopulacao
			}
			se(salariosPopulacao < 100){
				auxSalarioMenor += 1
			}
			porcentagemSalarioMenor = (auxSalarioMenor/populacao)*100
			somaSalario = somaSalario + salariosPopulacao
		}
		mediaSalario = somaSalario/populacao
		
		para (inteiro i = 0; i < populacao; i++)
		{
			escreva("Digite quantos filhos o ",i+1, " habitante possui: ")
			leia(quantidadeFilhosPopulacao)
			somaFilhos = somaFilhos + quantidadeFilhosPopulacao
		}
		
		mediaFilhos = somaFilhos/populacao

		limpa()
		escreva("A média salarial é: ",Mat.arredondar(mediaSalario,2))
		escreva("\nA média de filhos é: ", Mat.arredondar(mediaFilhos,2))
		escreva("\nO maior salário é ", auxMaiorSalario)
		escreva("\nA porcentagem de salário abaixo de R$ 100.00 é: ", Mat.arredondar(porcentagemSalarioMenor,2),"%.")
		
	
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1449; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */