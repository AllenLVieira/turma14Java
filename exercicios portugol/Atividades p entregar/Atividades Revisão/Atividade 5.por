programa
{
	
	funcao inicio()
	{
		real vetor[5]
		inteiro codigo

		para(inteiro i = 0; i < 5; i++){
			escreva("\nDigite o [",i+1,"] elemento: ")
			leia(vetor[i])
		}
		limpa()
		escreva("\n0\t- Finaliza o programa")
		escreva("\n1\t- Ordem direta")
		escreva("\n2\t- Ordem inversa")
		escreva("\nDigite a opção desejada: ")
		leia(codigo)
		escolha(codigo){
			caso 0:
			pare
			
			caso 1:
				para(inteiro i = 0; i < 5; i++){
					escreva(vetor[i],"\n")
				}
			pare

			caso 2:
				para(inteiro i = 4; i >= 0; i--){
					escreva(vetor[i],"\n")
				}
			pare

			caso contrario:
				escreva("Código inválido.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 622; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */