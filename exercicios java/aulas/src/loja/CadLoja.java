package loja;

import java.util.*;

public class CadLoja {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int opcao;
		String nome;
		char genero, continuar = 'S';
		do {
			menu();
			opcao = sc.nextInt();
			switch (opcao) {
			case 1:
				sc.nextLine();
				System.out.println("Digite seu nome: ");
				nome = sc.nextLine();
				do {
					System.out.println("[M] para Masculino, [F] para feminino: ");
					genero = sc.next().toUpperCase().charAt(0);
				} while ((genero != 'M') && (genero != 'F'));
				System.out.printf("Seja bem vind%s, %s\n", retornaGenero(genero), nome);
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
				System.out.println("Você deseja fazer outra operação S ou N");
				continuar = sc.next().toUpperCase().charAt(0);
			}while((continuar != 'S') && (continuar != 'N'));
		} while (continuar != 'N');
		sc.close();
	}

	static void linha(int tam) {
		for (int i = 1; i <= tam; i++) {
			System.out.print("-");
		}
	}
	
	static void menu() {
		linha(80);
		System.out.println("\n                               FLASH ILUMINAÇÕES");
		System.out.println("                 FLASH ILUMINAÇÕES, O MELHOR QUE VOCÊ PODE TER");
		linha(80);
		System.out.println("\n[1] - COMPRAR PRODUTOS");
		System.out.println("[2] - GERENCIAR ESTOQUE");
		System.out.println("[3] - SAIR");
		System.out.println("Digite a opção desejada: ");
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
