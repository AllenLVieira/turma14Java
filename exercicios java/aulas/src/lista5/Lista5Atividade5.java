package lista5;

import java.util.Scanner;

public class Lista5Atividade5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double vetor[] = new double[5];
		int codigo;

		for (int i = 0; i < 5; i++) {
			System.out.println("Digite o [" + (i + 1) + "] elemento: ");
			vetor[i] = sc.nextDouble();
		}
		System.out.println("0\t- Finaliza o programa");
		System.out.println("1\t- Ordem direta");
		System.out.println("2\t- Ordem inversa");
		System.out.println("Digite a opção desejada: ");
		codigo = sc.nextInt();
		switch (codigo) {
		case 0:
			break;

		case 1:
			for (int i = 0; i < 5; i++) {
				System.out.println(vetor[i] + "");
			}
			break;

		case 2:
			for (int i = 4; i >= 0; i--) {
				System.out.println(vetor[i] + "");
			}
			break;

		default:
			System.out.println("Código inválido.");
		}
		sc.close();
	}

}
