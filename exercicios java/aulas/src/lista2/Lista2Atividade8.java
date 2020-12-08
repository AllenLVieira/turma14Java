package lista2;

import java.util.Scanner;

public class Lista2Atividade8 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double N;
		System.out.println("Digite o um número: ");
		N = sc.nextDouble();
		if (N > 100.0) {
			System.out.println("N é igual a " + N);
		} else {
			System.out.println("N é igual a 0");
		}
		sc.close();
	}

}
