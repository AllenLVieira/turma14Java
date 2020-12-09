package banco;

import java.util.Scanner;

public class BancoG6 {
	final static int MAXMOVIMENTACOES = 3;

	public static void main(String[] args) {

		Scanner leia = new Scanner(System.in);
		final int tamanho = 80;
		char tipoConta;
		do {
			linha(tamanho);
			System.out.println("\n                                   App G6 Bank");
			linha(tamanho);
			System.out.println("\nServiços Disponíveis");
			System.out.println("[1] - Conta Poupança");
			System.out.println("[2] - Conta Corrente");
			System.out.println("[3] - Conta Especial");
			System.out.println("[4] - Conta Empresa");
			System.out.println("[5] - Conta Universitária");
			System.out.println("[6] - Sair");
			System.out.println("\nDigite a opção: ");
			tipoConta = leia.next().charAt(0);
			while (tipoConta != '1' && tipoConta != '2' && tipoConta != '3' && tipoConta != '4' && tipoConta != '5'
					&& tipoConta != '6') {
				System.out.println("Opção inválida. Digite a opção: ");
				tipoConta = leia.next().charAt(0);
			}
			if (tipoConta == '1') {
				contaPoupanca();
			}
			/*else if(tipoConta == '2') {

			}
			else if(tipoConta == '3') {

			}
			else if(tipoConta == '4') {

			}
			else if(tipoConta == '5') {

			}*/
			else if(tipoConta == '6') {
				System.out.println("Encerrando sistema");
				System.exit(0);
			}
		} while (tipoConta != '6');
	}

	public static void linha(int tamanho) {
		for (int x = 0; x < tamanho; x++) {
			System.out.print("═");
		}
	}

	public static void contaPoupanca() {
		Scanner sc = new Scanner(System.in);
		char opcao, continuar = 'S';
		double movimentoConta, saldoConta = 0.0;
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

	}

}