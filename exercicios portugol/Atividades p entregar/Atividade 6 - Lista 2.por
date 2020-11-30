programa
{
	
	funcao inicio()
	{
		inteiro idadeNadador
		escreva("Digite a sua idade: ")
		leia(idadeNadador)
		se(idadeNadador >= 0){
			se(idadeNadador >= 5 e idadeNadador <= 7){
				escreva("Você faz parte do Infantil A")
			}
			senao se(idadeNadador >= 8 e idadeNadador <= 11){
				escreva("Você faz parte do Infantil B")
			}
			senao se(idadeNadador >= 12 e idadeNadador <= 13){
				escreva("Você faz parte do Juvenil A")
			}
			senao se(idadeNadador >= 14 e idadeNadador <= 17){
				escreva("Você faz parte do Juvenil B")
			}
			senao se(idadeNadador >= 18){
				escreva("Você faz parte da modalidade Adulto")
			}
			senao{
				escreva("Você não tem idade para competir.")
			}
		}
		senao{
			escreva("A idade não pode ser negativa.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 744; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */