programa
{
	inclua biblioteca Util
	
	const inteiro LIMITEALUNOS = 39
	inteiro notaAlunos[LIMITEALUNOS]
	inteiro matricula[LIMITEALUNOS]
	cadeia matriculaFinal[LIMITEALUNOS]
	inteiro opcao
	caracter status
	cadeia nomeAlunos[] = {"Allen de Lima Vieira","André de Brito Silva da Costa","Bárbara Liboni Guerra","Beatriz Martins","Beymar Jhoel Acapa Lima","Breno Nogueira Botelho Noccioli","Daniel Augusto Gomes Ferreira Filho","Danilo Mendes Ferreira","Danilo Pereira da Silva","Davi Silva Vieira","Diego Vinicio da Silva Nascimento","Erick Costa Ferreira","Ewerton Inacio Lima","FERNANDA AGAPITO","Fernanda Barbosa Ferraz","Francisco José Pires","Gabriel Sérgio Nascimento Santos Gonçalves","Gideão da Silva Idelfonso","GILSON AMORIM DE MATOS","Guilherme Gonçalves da Silva","Gustavo Rabelo Teles","HELOISA BEATRIZ DE OLIVEIRA COSTA","Igor Mateus Queiroz Gato","Isabel Emiko Yamakawa Oyama","Jackeline Akemi de Moura","José Jorge Hauck Júnior","Juliana Santos André","Kélven Cleiton de Araújo Brandão","Laís Lima Santos","Lucas anseloni barros","Lucas Gonçalves da SIlva","luis felipe da silva","Luiz Felipe da Silva Magalhães","Marcos Eduardo Gomes Gonçalves","Micaely da Silva Lima","Rafaela Oliveira Silva","Tiago dos Santos Martins","Verônica Navarro Almenara","Vinicius Alves Miranda"}
	caracter genero[] = {'M','M','F','F','M','M','M','M','M','M','M','M','M','F','F','M','M','M','M','M','M','F','M','F','F','M','F','M','F','M','M','M','M','M','F','F','M','F','M'}
	
	funcao inicio()
	{
		para(inteiro x = 0; x < LIMITEALUNOS; x++){
			matricula[x] = x+1
			se(matricula[x] < 10){
				matriculaFinal[x] = ("G6-0"+matricula[x])
			}
			senao{
				matriculaFinal[x] = ("G6-"+matricula[x])
			}
		}
		
		para(inteiro x = 0; x < LIMITEALUNOS; x++){
			notaAlunos[x] = Util.sorteia(1,10)
		}

		faca{
			limpa()
			escreva("----Escola G6----")
			escreva("\n1 - Lista de nota dos homens")
			escreva("\n2 - Lista de nota das mulheres")
			escreva("\n3 - Lista de nota dos aprovados")
			escreva("\n4 - Lista de nota dos reprovados\n")
			leia(opcao)
			enquanto(opcao <1 ou opcao>4){
				escreva("Opção incorreta. Digite uma opção válida [1], [2], [3] ou [4]: ")
				leia(opcao)
			}
			
			escolha(opcao){
				caso 1:
				notasHomens()	
				pare
				caso 2:
				notasMulheres()
				pare
				caso 3:
				situacaoAprovado()	
				pare
				caso 4:
				situacaoReprovado()
				pare
			}
			
			escreva("\n\nVocê quer fazer outra operação [S] ou [N]? ")
			leia(status)
			
		}enquanto(status == 's' ou status == 'S')
	}
	funcao notasHomens(){
		limpa()
		escreva("------Lista de homens e notas------\n")
   		para(inteiro x = 0; x < LIMITEALUNOS; x++){
     		se(genero[x] == 'M'){
      			escreva("\n"+matriculaFinal[x]+" - "+ nomeAlunos[x]+ " com nota "+notaAlunos[x]+"!")
                        }
                    }
                }
	
	funcao notasMulheres(){
		limpa()
		escreva("------Lista de mulheres e notas------\n")
		para(inteiro x = 0; x < LIMITEALUNOS; x++){
			se(genero[x] =='F'){
				escreva("\n",matriculaFinal[x]," - ",nomeAlunos[x]," com nota: ",notaAlunos[x],"!")	
			}
		
		}
	}
	
	funcao situacaoAprovado(){
		limpa()
		escreva("------Lista de aprovados------\n")
     	para(inteiro x = 0; x < LIMITEALUNOS; x++){ 
     		se (notaAlunos[x]>5){
     			se ((genero[x]=='F') ou (genero[x]=='f'))
     			{
     				escreva("\n",matriculaFinal[x], " - ", nomeAlunos[x], " está aprovada com nota ",notaAlunos[x],"!")
     			}
     			senao se ((genero[x]=='M') ou (genero[x]=='m'))
     			{
     				escreva("\n",matriculaFinal[x], " - ", nomeAlunos[x], " está aprovado com nota ",notaAlunos[x],"!")
     			}
			}
		}
	}
            
	funcao situacaoReprovado()
    	{
    		limpa()
		escreva("------Lista de reprovados------\n")
    		para (inteiro x = 0; x< LIMITEALUNOS; x++){
            se (notaAlunos[x]<5 e genero[x]=='M')
            {
                escreva("\n",matriculaFinal[x]," - ",nomeAlunos[x], " está reprovado com nota ",notaAlunos[x],"!")
            }
            senao se (notaAlunos[x]<5 e genero[x]=='F')
            {
                escreva("\n",matriculaFinal[x]," - ",nomeAlunos[x], " está reprovada com nota ",notaAlunos[x],"!")
            }
    		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1789; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */