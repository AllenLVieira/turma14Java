package lista4;

import java.util.Scanner;

public class Lista4Atividade1 {
	// Regra de negócio: Ler e armazenar 5 notas, mostrar as notas e a maior nota.
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		final int TAMANHO = 5;
		double notas[] = new double[TAMANHO], maiorNota = -99.0;

		for (int i = 0; i < TAMANHO; i++) {
			System.out.println("\nDigite a " + (i + 1) + " nota:");
			notas[i] = sc.nextDouble();
			if (notas[i] > maiorNota) {
				maiorNota = notas[i];
			}
		}
		System.out.println("Notas:\n");

		for (int i = 0; i < TAMANHO; i++) {
			System.out.println(notas[i] + "\n");
		}
		System.out.println("A maior nota foi: " + maiorNota);
		sc.close();
	}

}
