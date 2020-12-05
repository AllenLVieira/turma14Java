programa
{
	inclua biblioteca Matematica --> Mat
	inclua biblioteca Texto

	const inteiro ANIVERSARIOCONTA = 15
	const inteiro MAXMOVIMENTACOES = 5

	cadeia nome[] = {"Allen de Lima Vieira","André de Brito Silva da Costa","Bárbara Liboni Guerra","Beatriz Martins","Beymar Jhoel Acapa Lima","Breno Nogueira Botelho Noccioli","Daniel Augusto Gomes Ferreira Filho","Danilo Mendes Ferreira","Danilo Pereira da Silva","Davi Silva Vieira","Diego Vinicio da Silva Nascimento","Erick Costa Ferreira","Ewerton Inacio Lima","Fernanda Agapito","Fernanda Barbosa Ferraz","Francisco José Pires","Gabriel Sérgio Nascimento Santos Gonçalves","Gideão da Silva Idelfonso","Gilson Amorim de Matos","Guilherme Gonçalves da Silva","Gustavo Rabelo Teles","Heloisa Beatriz de Oliveira Costa","Igor Mateus Queiroz Gato","Isabel Emiko Yamakawa Oyama","Jackeline Akemi de Moura","José Jorge Hauck Júnior","Juliana Santos André","Kélven Cleiton de Araújo Brandão","Laís Lima Santos","Lucas anseloni barros","Lucas Gonçalves da SIlva","luis felipe da silva","Luiz Felipe da Silva Magalhães","Marcos Eduardo Gomes Gonçalves","Micaely da Silva Lima","Rafaela Oliveira Silva","Tiago dos Santos Martins","Verônica Navarro Almenara","Vinicius Alves Miranda"}
	caracter genero[] = {'M','M','F','F','M','M','M','M','M','M','M','M','M','F','F','M','M','M','M','M','M','F','M','F','F','M','F','M','F','M','M','M','M','M','F','F','M','F','M'}
	inteiro numeroConta[39]
	
	real saldoConta = 0.0 , movimentoConta[10]
	caracter verificacaoTalao, continuar
	cadeia opcao, status
	inteiro numeroTalao = 0, diaHoje,x 
	cadeia cpfConta, emprestimo
	real maximoEmprestimo= 5000.0, valorLimite = 2000.0 
	inteiro numConta,tipoConta, especial
	
	funcao inicio()
	{
		para(x = 0; x < 39; x++){
			numeroConta[x]= x + 1
		}
		escreva("App G6 Bank")
		escreva("\nDigite o número da sua conta: ")
		leia(numConta)
		escreva("\nDigite o número do seu CPF: ")
		leia(cpfConta)
		escreva("\nDigite o dia de hoje: ")
		leia(diaHoje)
		enquanto(diaHoje<1 ou diaHoje>31 ){
			escreva("\nValor inválido! Digite o dia de hoje: ")
			leia(diaHoje)
		}				
		para(x = 0; x < 39; x++){
			se(numConta == numeroConta[x] e genero[x] == 'M'){
				limpa()
				escreva("Bem vindo ",nome[x]," ao App G6 Bank")	
				escreva("\nNúmero da conta: ",numConta)
				escreva("\nNúmero do CPF: ",cpfConta)
				escreva("\n\nDigite o tipo de conta:")
				escreva("\n\t1 - Conta Poupança")
				escreva("\n\t2 - Conta Corrente") 
				escreva("\n\t3 - Conta Especial")
				escreva("\n\t4 - Conta Empresa\n")
				leia(tipoConta)
				escolhaCaso(tipoConta)
			}
			senao se (numConta == numeroConta[x] e genero[x] == 'F'){
				limpa()
				escreva("Bem vinda ",nome[x]," ao App G6 Bank")	
				escreva("\nNúmero da conta: ",numConta)
				escreva("\nNúmero do CPF: ",cpfConta)
				escreva("\n\nDigite o tipo de conta:")
				escreva("\n\t1 - Conta Poupança")
				escreva("\n\t2 - Conta Corrente") 
				escreva("\n\t3 - Conta Especial")
				escreva("\n\t4 - Conta Empresa\n")
				leia(tipoConta)
				escolhaCaso(tipoConta)
			}
		}	
	}
	
	funcao escolhaCaso(inteiro tConta){
		limpa()
		escolha(tConta){
			caso 1:
				contaPoupanca()	
			pare
			
			caso 2:
				contaCorrente()
			pare
			
			caso 3:
				contaEspecial()
			pare
	
			caso 4:
				contaEmpresa()
			pare

			caso contrario:
				escreva("\nCódigo incorreto.")
		}
	}

	funcao creditoOuDebito(){
		para(inteiro i = 0; i < MAXMOVIMENTACOES;i++){
			se(saldoConta == 0.0){
				escreva("\nVocê não tem saldo. Quanto você quer depositar: R$ ")
				leia(movimentoConta[i])
				enquanto(movimentoConta[i] < 0.0){
					escreva("\nValor inválido! Quanto você quer depositar: R$ ")
					leia(movimentoConta[i])
				}	
					saldoConta += movimentoConta[i]
			}
			senao{
				escreva("\nVocê quer Creditar (C) ou Debitar (D) da conta? ")
				leia(status)
				status = Texto.caixa_alta(status)
				se(status == "C"){
					escreva("\nQuanto você quer depositar: R$ ")
					leia(movimentoConta[i])
					enquanto(movimentoConta[i] < 0.0){
						escreva("\nValor inválido! Quanto você quer depositar: R$ ")
						leia(movimentoConta[i])				
					}
						saldoConta += movimentoConta[i] 
				}
				senao{
					escreva("\nQuanto você quer retirar: R$ ")
					leia(movimentoConta[i])
					enquanto(movimentoConta[i] < 0.0 ou movimentoConta[i] > saldoConta){
						escreva("\nValor inválido! Quanto você quer retirar: R$ ")
						leia(movimentoConta[i])
					} 
					movimentoConta[i]= (-movimentoConta[i])
						saldoConta += movimentoConta[i] 
				}
			}		
		}
	}
	
	funcao contaPoupanca(){
		faca{
			creditoOuDebito()
			escreva("Você deseja abrir o App G6 Bank hoje (S ou N)? ")
			leia(opcao)
			opcao = Texto.caixa_alta(opcao)
			se(diaHoje == ANIVERSARIOCONTA){
				saldoConta = saldoConta*(1+0.5/100) 
			}
		}enquanto(opcao == "S")
		limpa()
		escreva("Você tem ",Mat.arredondar(saldoConta,2)," reais na sua conta do G6 Bank")	
	}
	
	funcao contaCorrente(){
		faca{
			creditoOuDebito()
			escreva("Você deseja imprimar um talão de cheque [S] ou [N]? ")
			leia(verificacaoTalao)
			enquanto (verificacaoTalao != 's' e verificacaoTalao != 'S' e verificacaoTalao != 'n' e verificacaoTalao != 'n'){
				escreva("\nOperação incorreta. Digite [S] para continuar ou [N] para parar? ")
				leia(verificacaoTalao)				
			}
			se(verificacaoTalao == 's' ou verificacaoTalao =='S'){
				numeroTalao++
			}
			escreva("\nVocê deseja abrir o App G6 Bank hoje (S ou N)? ")
			leia(opcao)
			opcao = Texto.caixa_alta(opcao)
		}enquanto(opcao =="S")
		limpa()
		escreva("Seu saldo é: $",saldoConta)
		escreva("\nNúmero de talões de cheque impressos: ",numeroTalao)
	}
	
	funcao contaEspecial(){
		faca{
			para (x=0; x<MAXMOVIMENTACOES; x++)
			{
				escreva("\nVocê quer Creditar (C) ou Debitar (D) da conta? ")
				leia(status)
				status = Texto.caixa_alta(status)
				enquanto (status != "C" e status != "D")
				{
					escreva("Valor inválido! Favor digitar C para depósito ou D para Saque: ")
					leia(status)
				}
				se (status=="C")
				{
					escreva("\nQuanto você quer depositar: R$ ")
					leia(movimentoConta[x])
					enquanto (movimentoConta[x]<0)
					{
						escreva("\nValor inválido! Quanto você quer depositar: R$")
						leia(movimentoConta[x])						
					} 
					saldoConta=saldoConta+movimentoConta[x]
					escreva("Seu novo saldo é: \n",saldoConta)				
				}
				senao se (status =="D")
				{
					escreva("\nQuanto você quer retirar: R$ ")
					leia(movimentoConta[x])
					enquanto (movimentoConta[x]<0)
					{
						escreva("\nValor inválido. Quanto você quer retirar: R$ ")
						leia(movimentoConta[x])
					} 
					enquanto (movimentoConta[x]>saldoConta+valorLimite)
					{
						escreva("Saldo e Limite de crédito insuficientes! Quanto você quer retirar: R$ ")
						leia(movimentoConta[x])
					}	
					se (movimentoConta[x]>saldoConta)
					{
						escreva("Saldo insuficiente! Você deseja utilizar o crédito especial? ")
						escreva("\nLimite disponível: R$",valorLimite)
						escreva("\nDigite 1 - Sim ou 2 - Não ")
						leia(especial)
						enquanto (especial!=1 e especial!=2)
						{
							escreva("Valor inválido! Digite 1-Sim ou 2-Não ")
							leia(especial)
						}										
						se (especial==1)
						{	
							valorLimite=((saldoConta+valorLimite)-movimentoConta[x])
							movimentoConta[x]= -movimentoConta[x]
							saldoConta=saldoConta + movimentoConta[x]
							se(saldoConta <0.0){
								saldoConta = 0.0
							}
						}	
						senao 
						{
							escreva("\nO saque não poderá ser realizado! ")
						}				
					}
				}			
			}
			escreva("\nVocê deseja abrir o App G6 Bank hoje (S ou N)? ")
			leia(opcao)
			opcao = Texto.caixa_alta(opcao)
		}enquanto(opcao =="S")
		escreva("Seu saldo é: R$ ",saldoConta)
		escreva("\nSeu Limite disponível é: R$ ",valorLimite)
	}
	
	funcao contaEmpresa(){
		faca{
			para(x=0;x<MAXMOVIMENTACOES;x++)
			{
				escreva("\nVocê quer Creditar (C) ou Debitar (D) da conta? ")
				leia(status)
				status = Texto.caixa_alta(status)
				se(status =="C")
				{
					escreva("\nQuanto você quer depositar: R$ ")
					leia(movimentoConta[x])
					enquanto(movimentoConta[x]<0)
					{
						escreva("\nValor inválido! Quanto você quer depositar: R$ ")
						leia(movimentoConta[x])
					}
					saldoConta=saldoConta+movimentoConta[x]	
				}
				senao se (status =="D")
				{
					escreva("\nQuanto você quer retirar: R$ ")
					leia(movimentoConta[x])	
					enquanto(movimentoConta[x]<0)
					{
						escreva("\nValor inválido. Quanto você quer retirar: R$ ")
						leia(movimentoConta[x])
					}
					se(movimentoConta[x]<maximoEmprestimo){
						escreva("\nVocê deseja realizar um empréstimo S/N?")
						leia(emprestimo)
						emprestimo = Texto.caixa_alta(emprestimo)
						se (emprestimo =="S")
						{
							escreva("Quanto você quer de empréstimo: R$ ")
							leia(movimentoConta[x])
							enquanto (movimentoConta[x] >maximoEmprestimo)
							{
								escreva("Valor inváido. Quanto você quer de empréstimo: R$ ")
								leia(movimentoConta[x])
							}
							maximoEmprestimo=maximoEmprestimo-movimentoConta[x]
							saldoConta=saldoConta+movimentoConta[x]
							escreva("Seu novo saldo é"," R$ ", saldoConta)
						}
						senao 
						{
							escreva("\nSolicitação de crédito cancelada.")
						}
					}
					movimentoConta[x] = -movimentoConta[x]
					saldoConta=saldoConta+movimentoConta[x]
				}
			}
			escreva("\nSeu saldo é"," R$ ", saldoConta)  
			escreva("\nVocê deseja abrir o App G6 Bank hoje (S ou N)? ")
			leia(opcao)
			opcao = Texto.caixa_alta(opcao)
		}enquanto(opcao =="S")
		escreva("Seu saldo é: $",saldoConta)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */