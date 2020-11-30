programa
{
	inclua biblioteca Matematica --> Mat
	
	funcao inicio()
	{
		real baseTriangulo, alturaTriangulo, areaTriangulo
		escreva("Digite quanto mede a base do triângulo: ")
		leia(baseTriangulo)
		escreva("Digite quanto mede a altura do triângulo: ")
		leia(alturaTriangulo)
		se(baseTriangulo > 0.0 e alturaTriangulo > 0.0){
			areaTriangulo = (baseTriangulo*alturaTriangulo)/2
			escreva("A área do triângulo é ",areaTriangulo)
		}
		senao{
			escreva("Você não pode digitar valores menores ou iguais a 0")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 513; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */