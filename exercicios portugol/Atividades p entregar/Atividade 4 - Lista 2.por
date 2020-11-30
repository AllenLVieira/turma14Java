programa
{
	
	funcao inicio()
	{
		inteiro numUsuario
		escreva("Digite um número: ")
		leia(numUsuario),
		se(numUsuario != 0){
			se(numUsuario%2==0){
				escreva("O número ", numUsuario, " é par.")
			}
			senao{
				escreva("O número ", numUsuario, " é ímpar.")
			}
		}
		senao{
			escreva("\nO número 0 é par, pois compartilha de todas as propriedades de um número par: é múltiplo de 2, é divisível por 2, cercado por dois números ímpares e etc..")
		}
		se(numUsuario > 0){
			escreva("\nO número ", numUsuario, " é positivo.")
		}
		senao se(numUsuario < 0){
			escreva("\nO número ", numUsuario, " é negativo.")
		}
		senao{
			escreva("\nO número ", numUsuario, " não é positivo nem negativo.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */