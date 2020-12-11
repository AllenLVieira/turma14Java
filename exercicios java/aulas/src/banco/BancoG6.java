package banco;

import java.util.Random;
import java.util.Scanner;

public class BancoG6 {
	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);

		final int tamanho = 80;
		final int MAXMOVIMENTACOES = 3;
		String clientes[] = new String[] { "Allen de Lima Vieira", "André de Brito Silva da Costa",
				"Bárbara Liboni Guerra", "Beatriz Martins", "Beymar Jhoel Acapa Lima",
				"Breno Nogueira Botelho Noccioli", "Daniel Augusto Gomes Ferreira Filho", "Danilo Mendes Ferreira",
				"Danilo Pereira da Silva", "Davi Silva Vieira", "Diego Vinicio da Silva Nascimento",
				"Erick Costa Ferreira", "Ewerton Inacio Lima", "Fernanda Agapito", "Fernanda Barbosa Ferraz",
				"Francisco José Pires", "Gabriel Enrique Cabral", "Gabriel Sérgio Nascimento Santos Gonçalves",
				"Gideão da Silva Idelfonso", "Gilson Amorim de Matos", "Guilherme Gonçalves da Silva",
				"Gustavo Rabelo Teles", "Heloisa Beatriz de Oliveira Costa", "Igor Mateus Queiroz Gato",
				"Isabel Emiko Yamakawa Oyama", "Jackeline Akemi de Moura", "José Jorge Hauck Júnior",
				"Juliana Santos André", "Kélven Cleiton de Araújo Brandão", "Laís Lima Santos", "Lucas Anseloni Barros",
				"Lucas Gonçalves da Silva", "Luis felipe da silva", "Luiz Felipe da Silva Magalhães",
				"Marcos Eduardo Gomes Gonçalves", "Micaely da Silva Lima", "Rafaela Oliveira Silva",
				"Tiago dos Santos Martins", "Verônica Navarro Almenara", "Vinicius Alves Miranda" };
		char genero[] = new char[] { 'M', 'M', 'F', 'F', 'M', 'M', 'M', 'M', 'M', 'M', 'M', 'M', 'M', 'F', 'F', 'M',
				'M', 'M', 'M', 'M', 'M', 'M', 'F', 'M', 'F', 'F', 'M', 'F', 'M', 'F', 'M', 'M', 'M', 'M', 'M', 'F', 'F',
				'M', 'F', 'M' };
		int tipoConta[] = new int[40];

		int aniversarioConta[] = new int[40];

		int talao[] = new int[40];
		int totalTalao[] = new int[40];

		int conta[] = new int[40];
		int contaUsuario, opcao;
		double saldo[] = new double[40];
		char tConta, continuar;
		double saldoConta;
		char a = ' ';
		saldoConta = 0.0;

		Random r = new Random();

		for (int i = 0; i < 40; i++) {
			aniversarioConta[i] = r.nextInt(30) + 1;

			talao[i] = 3;
			totalTalao[i] = 0;

			conta[i] = (i + 1);
			tipoConta[i] = r.nextInt(5) + 1;
			saldo[i] = 0;
		}
		// Forçando tipos de conta para testar:
		tipoConta[0] = 1;// Allen Vieira, conta 1 (indice 0), conta poupança
		tipoConta[7] = 2;// Danilo Mendes, conta 8 (indice 7), conta corrente

		linha(tamanho);
		System.out.println("\n                                   App G6 Bank");
		linha(tamanho);
		System.out.println("\nDigite o número da conta: ");
		contaUsuario = leia.nextInt();
		while (contaUsuario < 1 || contaUsuario > 40) {
			System.out.println("Essa conta não existe ainda.");
			System.out.println("\nDigite o número da conta: ");
			contaUsuario = leia.nextInt();
		}
		if (genero[contaUsuario - 1] == 'M') {
			System.out.println("Seja bem vindo " + clientes[contaUsuario - 1]);
		} else {
			System.out.println("Seja bem vinda " + clientes[contaUsuario - 1]);
		}
		System.out.println("Número da conta: " + conta[contaUsuario - 1]);
		System.out.println("Tipo da conta: " + tipoConta[contaUsuario - 1]);
		do {
			linha(tamanho);
			System.out.println("\n\t\t\t\tMENU INICIAL");
			linha(tamanho);
			System.out.println("\nEscolha uma opção");
			linha(tamanho);
			System.out.println("\n[1] - Movimentação");
			System.out.println("[2] - Saldo");
			System.out.println("[3] - Sair");

			opcao = leia.nextInt();
			while (opcao < 1 || opcao > 3) {
				System.out.println("\nOpção inválida. Escolha uma opção: ");
				opcao = leia.nextInt();
			}
			if (opcao == 1) {
				if (tipoConta[contaUsuario - 1] == 1) {
					a = contaPoupanca(contaUsuario - 1, aniversarioConta, saldo, MAXMOVIMENTACOES);
				} else if (tipoConta[contaUsuario - 1] == 2) {
					a = contaCorrente(contaUsuario - 1, saldo, MAXMOVIMENTACOES, talao, totalTalao);
				} else if (tipoConta[contaUsuario - 1] == 3) {
					a = contaPoupanca(contaUsuario - 1, aniversarioConta, saldo, MAXMOVIMENTACOES);
				} else if (tipoConta[contaUsuario - 1] == 4) {
					a = contaPoupanca(contaUsuario - 1, aniversarioConta, saldo, MAXMOVIMENTACOES);
				}
			} else if (opcao == 2) {
				System.out.println("WIP");
			} else {
				System.out.println("Tchau");
				System.exit(0);
			}
		} while (a == 'N');
	}

	static void linha(int tamanho) {
		for (int x = 0; x < tamanho; x++) {
			System.out.print("═");
		}
	}

	public static char contaPoupanca(int conta, int aniversarioConta[], double saldo[], int MAXMOVIMENTACOES) {
		Scanner sc = new Scanner(System.in);
		char opcao, continuar = 'S';
		double movimentoConta;
		int i = 0, diaHoje;
		System.out.println("O dia de aniversário da sua conta é: " + aniversarioConta[conta]);
		System.out.println("Digite o dia de hoje: ");
		diaHoje = sc.nextInt();
		System.out.println("Deseja iniciar alguma movimentação na conta (S ou N)");
		continuar = sc.next().toUpperCase().charAt(0);
		while (continuar != 'S' && continuar != 'N') {
			System.out.println("Opção inválida. Você quer iniciar (S ou N)? ");
			continuar = sc.next().toUpperCase().charAt(0);
		}
		while (continuar == 'S' && i < MAXMOVIMENTACOES) {
			i++;
			System.out.println("Você quer Creditar (C) ou Debitar (D) da conta? ");
			opcao = sc.next().toUpperCase().charAt(0);
			while (opcao != 'C' && opcao != 'D') {
				System.out.println("Operação inválida! Favor digitar (C) para depósito ou (D) para Saque: ");
				opcao = sc.next().toUpperCase().charAt(0);
			}
			if (opcao == 'C') {
				System.out.println("Quanto você quer depositar: R$ ");
				movimentoConta = sc.nextDouble();
				while (movimentoConta < 0.0) {
					System.out.println("Valor inválido! Quanto você quer depositar: R$ ");
					movimentoConta = sc.nextDouble();
				}
				saldo[conta] += movimentoConta;
				System.out.printf("O saldo atual é: R$ %.2f\n", saldo[conta]);
			} else {
				System.out.println("Quanto você quer retirar: R$ ");
				movimentoConta = sc.nextDouble();
				while (movimentoConta < 0.0 || movimentoConta > saldo[conta]) {
					System.out.println("Valor inválido! Quanto você quer retirar: R$ ");
					movimentoConta = sc.nextDouble();
				}
				movimentoConta = (-movimentoConta);
				saldo[conta] += movimentoConta;
				System.out.printf("O saldo atual é: R$ %.2f\n", saldo[conta]);
			}
			System.out.println("Você deseja continuar (S ou N)?");
			continuar = sc.next().toUpperCase().charAt(0);
			while (continuar != 'S' && continuar != 'N') {
				System.out.println("Opção inválida. Você quer continuar (S ou N)? ");
				continuar = sc.next().toUpperCase().charAt(0);
			}
			if (i >= MAXMOVIMENTACOES) {
				System.out.println("Você já movimentou o limite diário.");
				continuar = 'N';
			}
		}
		if (diaHoje == aniversarioConta[conta]) {
			saldo[conta] = (1 + (0.5 / 100)) * saldo[conta];
			System.out.printf("Parabéns, seu novo saldo é: R$ %.2f já que hoje é o aniversário da conta!\n",
					saldo[conta]);
		}
		return continuar;
	}

	public static char contaCorrente(int conta, double saldo[], int MAXMOVIMENTACOES, int talao[], int totalTalao[]) {

		double movimentoConta;
		char status, continuar;
		int i = 0;
		char opcaoTalao;
		int quantidadeTalao;

		Scanner leia = new Scanner(System.in);

		System.out.println("Deseja iniciar alguma movimentação na conta S/N");
		continuar = leia.next().toUpperCase().charAt(0);
		while (continuar != 'S' && continuar != 'N') {
			System.out.println("Opção inválida. Você quer iniciar (S ou N)? ");
			continuar = leia.next().toUpperCase().charAt(0);
		}
		while (continuar == 'S' && i < MAXMOVIMENTACOES) {
			i++;
			System.out.println("\nVocê quer Creditar (C) ou Debitar (D) da conta? ");
			status = leia.next().toUpperCase().charAt(0);
			while (status != 'C' && status != 'D') {
				System.out.println("\nOpção inválida. Você quer Creditar (C) ou Debitar (D) da conta? ");
				status = leia.next().toUpperCase().charAt(0);
			}
			if (status == 'C') {
				System.out.println("Quanto você quer depositar: R$ ");
				movimentoConta = leia.nextDouble();
				while (movimentoConta < 0) {
					System.out.println("\nValor inválido. Quanto você quer depositar: R$ ");
					movimentoConta = leia.nextDouble();
				}
				saldo[conta] = saldo[conta] + movimentoConta;
				System.out.printf("Saldo atual: R$ %.2f", saldo[conta]);
			} else {
				System.out.println("Quanto você quer retirar: R$ ");
				movimentoConta = leia.nextDouble();
				while (movimentoConta < 0 || movimentoConta > saldo[conta]) {
					System.out.println("\nValor inválido. Quanto você quer retirar: R$ ");
					movimentoConta = leia.nextDouble();
				}
				saldo[conta] = saldo[conta] - movimentoConta;
				System.out.printf("Saldo atual: R$ %.2f", saldo[conta]);
			}
			System.out.println("\nVocê deseja continuar (S ou N)? ");
			continuar = leia.next().toUpperCase().charAt(0);
			while (continuar != 'S' && continuar != 'N') {
				System.out.println("\nOpção inválida. Deseja continuar? ");
				continuar = leia.next().toUpperCase().charAt(0);
			}

			if (i >= MAXMOVIMENTACOES) {
				System.out.println("Você já movimentou o limite diário.");
				continuar = 'N';
			}
		}
		System.out.println("Você deseja imprimir talão(S ou N)? ");
		opcaoTalao = leia.next().toUpperCase().charAt(0);
		while (opcaoTalao != 'S' && opcaoTalao != 'N') {
			System.out.println("\nOpção inválida. Deseja continuar? ");
			opcaoTalao = leia.next().toUpperCase().charAt(0);
		}
		System.out.println("Digite a quantidade:");
		quantidadeTalao = leia.nextInt();
		while (quantidadeTalao < 0 || quantidadeTalao > 3) {
			System.out.println("Quantidade inválida. Digite a quantidade:");
			quantidadeTalao = leia.nextInt();
		}
		while (quantidadeTalao > talao[conta]) {
			System.out.printf("Erro! Quantidade disponível: %d. Digite a quantidade:", talao[conta]);
			quantidadeTalao = leia.nextInt();
		}
		talao[conta] = talao[conta] - quantidadeTalao;
		totalTalao[conta] = totalTalao[conta] + quantidadeTalao;
		if (talao[conta] == 0) {
			talao[conta] = 3;
		}
		System.out.printf("Quantidade diária imprimida: %d\n", quantidadeTalao);
		System.out.printf("Quantidade total imprimida: %d\n", totalTalao[conta]);
		return continuar;
	}

	public static char contaEspecial(double saldoConta, int MAXMOVIMENTACOES) {

		double movimentoConta;
		int numConta;
		char status, continuar = ' ';

		Scanner leia = new Scanner(System.in);

		System.out.println("Digite o número da conta: ");
		numConta = leia.nextInt();
		System.out.printf("Seu saldo atual é: %.2f", saldoConta);
		do {
			for (int x = 0; x < MAXMOVIMENTACOES; x++) {
				System.out.println("\n\nTransação " + (x + 1));
				if (saldoConta == 0) {
					System.out.println("Quanto você quer depositar: R$ ");
					movimentoConta = leia.nextDouble();
					while (movimentoConta < 0) {
						System.out.println("\nValor inválido. Quanto você quer depositar: R$ ");
						movimentoConta = leia.nextDouble();
					}
					saldoConta = saldoConta + movimentoConta;
					System.out.printf("Saldo atual: R$ %.2f", saldoConta);
				} else {
					System.out.println("\nVocê quer Creditar (C) ou Debitar (D) da conta? ");
					status = leia.next().toUpperCase().charAt(0);
					while (status != 'C' && status != 'D') {
						System.out.println("\nOpção inválida. Você quer Creditar (C) ou Debitar (D) da conta? ");
						status = leia.next().toUpperCase().charAt(0);
					}
					if (status == 'C') {
						System.out.println("Quanto você quer depositar: R$ ");
						movimentoConta = leia.nextDouble();
						while (movimentoConta < 0) {
							System.out.println("\nValor inválido. Quanto você quer depositar: R$ ");
							movimentoConta = leia.nextDouble();
						}
						saldoConta = saldoConta + movimentoConta;
						System.out.printf("Saldo atual: R$ %.2f", saldoConta);
					} else {
						System.out.println("Quanto você quer retirar: R$ ");
						movimentoConta = leia.nextDouble();
						while (movimentoConta < 0 || movimentoConta > saldoConta) {
							System.out.println("\nValor inválido. Quanto você quer retirar: R$ ");
							movimentoConta = leia.nextDouble();
						}
						saldoConta = saldoConta - movimentoConta;
						System.out.printf("Saldo atual: R$ %.2f", saldoConta);
					}
				}
			}
			System.out.println("\nVocê deseja continuar (S ou N)? ");
			continuar = leia.next().toUpperCase().charAt(0);
			while (continuar != 'S' && continuar != 'N') {
				System.out.println("\nOpção inválida. Deseja continuar? ");
				continuar = leia.next().toUpperCase().charAt(0);
			}
		} while (continuar == 'S');
		return continuar;
	}

	public static char contaEmpresa(double saldoConta, int MAXMOVIMENTACOES) {
		Scanner sc = new Scanner(System.in);
		char opcao, continuar = 'S';
		double movimentoConta;
		int numConta;
		System.out.println("Digite o seu número de conta: ");
		numConta = sc.nextInt();
		System.out.println("Saldo atual: " + saldoConta);
		do {
			for (int i = 0; i < MAXMOVIMENTACOES; i++) {
				if (saldoConta == 0.0) {
					System.out.println("Saldo atual: R$ " + saldoConta + " Quanto você quer depositar: R$ ");
					movimentoConta = sc.nextDouble();
					while (movimentoConta < 0.0) {
						System.out.println("Valor inválido! Quanto você quer depositar: R$ ");
						movimentoConta = sc.nextDouble();
					}
					saldoConta += movimentoConta;
				} else {
					System.out.println("Você quer Creditar (C) ou Debitar (D) da conta? ");
					opcao = sc.next().toUpperCase().charAt(0);
					while (opcao != 'C' && opcao != 'D') {
						System.out.println("Operação inválida! Favor digitar (C) para depósito ou (D) para Saque: ");
						opcao = sc.next().toUpperCase().charAt(0);
					}
					if (opcao == 'C') {
						System.out.println("Quanto você quer depositar: R$ ");
						movimentoConta = sc.nextDouble();
						while (movimentoConta < 0.0) {
							System.out.println("Valor inválido! Quanto você quer depositar: R$ ");
							movimentoConta = sc.nextDouble();
						}
						saldoConta += movimentoConta;
						System.out.println("O saldo atual é: " + saldoConta);
					} else {
						System.out.println("Quanto você quer retirar: R$ ");
						movimentoConta = sc.nextDouble();
						while (movimentoConta < 0.0 || movimentoConta > saldoConta) {
							System.out.println("Valor inválido! Quanto você quer retirar: R$ ");
							movimentoConta = sc.nextDouble();
						}
						movimentoConta = (-movimentoConta);
						saldoConta += movimentoConta;
						System.out.println("O saldo atual é: " + saldoConta);
					}
				}
			}
			System.out.println("Você deseja continuar (S ou N)?");
			continuar = sc.next().toUpperCase().charAt(0);
			while (continuar != 'S' && continuar != 'N') {
				System.out.println("Opção inválida. Você quer continuar (S ou N)? ");
				continuar = sc.next().charAt(0);
			}
		} while (continuar == 'S');
		return continuar;
	}
}