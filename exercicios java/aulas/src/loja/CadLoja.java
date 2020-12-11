package loja;

import java.util.*;

public class CadLoja {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int opcao, estoqueProdutos[] = new int[] { 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 }, cod, quantidade,
				carrinho[] = new int[10];
		String nome;
		String codProdutos[] = new String[10], nomeProdutos[] = new String[] { "PLAFON REDONDO", "PENDENTE REDONDO",
				"PENDENTE REDONDO CROMADO", "ABAJUR ALUM�NIO", "PENDENTE 10 BOLAS", "ARANDELA", "PLAFON QUADRADO",
				"LUSTRE PRETO 3 L�MPADAS", "LUSTRE ROS� 13 L�MPADAS", "ABAJUR SIMPLES" };
		double precoProdutos[] = new double[] { 305, 76, 80, 90, 660, 100, 80, 350, 1400, 30 }, somaTotal;
		char genero, continuar = 'S';

		for (int i = 0; i < 10; i++) {
			if (i < 9) {
				codProdutos[i] = "FLA-00" + (i + 1);
			} else {
				codProdutos[i] = "FLA-0" + (i + 1);
			}
		}

		do {
			menuInicial();
			opcao = sc.nextInt();
			switch (opcao) {
			case 1:
				sc.nextLine();
				somaTotal = 0.0;
				System.out.println("Digite seu nome: ");
				nome = sc.nextLine();
				do {
					System.out.println("[M] para Masculino, [F] para feminino: ");
					genero = sc.next().toUpperCase().charAt(0);
				} while ((genero != 'M') && (genero != 'F'));
				System.out.printf("Seja bem vind%s, %s\n\n", retornaGenero(genero), nome);
				adicionarCarrinho(codProdutos, estoqueProdutos, nomeProdutos, precoProdutos, carrinho);
				carrinhoCompras(estoqueProdutos, nomeProdutos, precoProdutos, somaTotal,carrinho);
				break;
			case 2:
				System.out.println("WIP");
				break;
			case 3:
				System.out.println("Agradecemos pelo interesse, volte sempre!");
				break;
			default:
				//
			}
			do {
				sc.nextLine();
				System.out.println("Voc� deseja fazer outra opera��o S ou N");
				continuar = sc.next().toUpperCase().charAt(0);
			} while ((continuar != 'S') && (continuar != 'N'));
		} while (continuar != 'N');
		sc.close();
	}

	static void adicionarCarrinho(String codProdutos[], int estoqueProdutos[], String nomeProdutos[],
			double precoProdutos[], int carrinho[]) {
		char continuar;
		int cod, quantidade;
		Scanner sc = new Scanner(System.in);
		for (int i = 0; i < 10; i++) {
			carrinho[i] = 0;
		}
		do {
			mostrarProdutos(codProdutos, precoProdutos, nomeProdutos);
			System.out.print("Digite o c�digo do produto desejado.\nFLA-0");
			cod = sc.nextInt();
			if (cod >= 1 && cod <= 10) {
				System.out.println("Digite quantas unidades quer comprar: ");
				quantidade = sc.nextInt();
				if (estoqueProdutos[cod - 1] >= quantidade) {
					estoqueProdutos[cod - 1] -= quantidade;
					carrinho[cod-1] +=quantidade;
				} else if (estoqueProdutos[cod - 1] == 0) {
					System.out.println("N�o temos mais este produto. Desculpe o incoveniente.");
				} else {
					System.out.println("N�o temos essa quantidade para esse produto! Temos apenas "
							+ estoqueProdutos[cod - 1] + " unidades.");
					do {
						System.out.println("Voc� gostaria de levar apenas essa quantidade (S ou N)?");
						continuar = sc.next().toUpperCase().charAt(0);
					} while ((continuar != 'S') && (continuar != 'N'));
					if (continuar == 'S') {
						carrinho[cod-1] +=estoqueProdutos[cod - 1];
						estoqueProdutos[cod - 1] -= estoqueProdutos[cod - 1];
					}
				}
			}
			do {
				System.out.println("Voc� gostaria de comprar outro produto (S ou N)?");
				continuar = sc.next().toUpperCase().charAt(0);
			} while ((continuar != 'S') && (continuar != 'N'));
		} while (continuar == 'S');
	}

	static void carrinhoCompras(int estoqueProdutos[], String nomeProdutos[], double precoProdutos[],
			double somaTotal, int carrinho[]) {
		linha(80);
		System.out.println("\nCarrinho de compras");
		linha(80);
		System.out.println();
		for (int i = 0; i < 10; i++) {
			if (carrinho[i] != 0) {
				System.out.printf("%s\t\t%d\t\t%.2f\n", nomeProdutos[i], carrinho[i], precoProdutos[i]);
				somaTotal += carrinho[i] * precoProdutos[i];
			}
		}
		System.out.println("\n\nPre�o total: " + somaTotal);
	}

	static void mostrarProdutos(String codProdutos[], double precoProdutos[], String nomeProdutos[]) {
		linha(60);
		System.out.println("\nC�D.\t\tPRE�O\t\tNOME DO PRODUTO");
		linha(60);
		System.out.println();
		for (int i = 0; i < 10; i++) {
			System.out.printf("%s\t\t%.2f\t\t%s\n", codProdutos[i], precoProdutos[i], nomeProdutos[i]);
		}
	}

	static void linha(int tam) {
		for (int i = 1; i <= tam; i++) {
			System.out.print("-");
		}
	}

	static void menuInicial() {
		linha(80);
		System.out.println("\n                               FLASH ILUMINA��ES");
		System.out.println("                 FLASH ILUMINA��ES, O MELHOR QUE VOC� PODE TER");
		linha(80);
		System.out.println("\n[1] - COMPRAR PRODUTOS");
		System.out.println("[2] - GERENCIAR ESTOQUE");
		System.out.println("[3] - SAIR");
		System.out.println("Digite a op��o desejada: ");
	}

	static String retornaGenero(char g) {
		String pronome = "";
		if (g == 'M') {
			pronome = "o";
		} else if (g == 'F') {
			pronome = "a";
		}
		return pronome;
	}
}
