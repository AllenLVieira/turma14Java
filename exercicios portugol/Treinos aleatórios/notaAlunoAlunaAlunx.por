programa
{
	
	funcao inicio()
	{
		inteiro nota
		caracter genero
		cadeia nome

		escreva ("Digite o seu nome: ")
		leia(nome)		
		escreva ("Masculino (M)  Feminino (F)  Outros(O): ")
		leia(genero)
		escreva ("Digite a sua nota: ")
		leia(nota)
		se (genero =='M'ou genero=='m'){
			se (nota>5){
				escreva("Parabéns, você está aprovado! ")
			}
			senao se (nota<=5){
				escreva("Infelizmente você está reprovado! ")
			}
			
		}		
		senao se (genero =='F' ou genero=='f'){
			se (nota>5){
				escreva("Parabéns, você está aprovada! ")
			}
			senao se (nota<=5){
				escreva("Infelizmente você está reprovada! ")
			}
		}
		senao se (genero =='O' ou genero =='o'){
			se (nota>5){
				escreva("Parabéns, você está aprovadx! ")
			}
			senao se (nota<=5){
				escreva("Infelizmente você está reprovadx! ")
			}
		}
		senao {
			escreva("Caractere inválido!")
		}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 876; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */