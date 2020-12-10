package lista4;

import java.util.Scanner;

public class Lista4Atividade4 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		final int TAMANHO = 3;
		double matriz[][] = new double[TAMANHO][TAMANHO], somaDiagonal = 0.0, somaTotal = 0.0;

		System.out.println("Digite os valores da matriz:");
		for (int i = 0; i < TAMANHO; i++) {
			for (int j = 0; j < TAMANHO; j++) {
				System.out.println("Elemento M[" + (i + 1) + "][" + (j + 1) + "]");
				matriz[i][j] = sc.nextDouble();
				if (i == j) {
					somaDiagonal += matriz[i][j];
				}
				somaTotal += matriz[i][j];
			}
		}

		System.out.println("A matriz digitada foi:");
		for (int i = 0; i < TAMANHO; i++) {
			for (int j = 0; j < TAMANHO; j++) {
				System.out.print(matriz[i][j] + "\t");
			}
			System.out.println();
		}
		System.out.println("Com soma total dada por: " + somaTotal);
		System.out.println("Com soma da diagonal principal dada por: " + somaDiagonal);
		sc.close();
	}
}
