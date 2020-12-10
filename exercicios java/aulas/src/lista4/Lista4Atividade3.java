package lista4;

import java.util.Scanner;

public class Lista4Atividade3 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int N1[][] = new int[4][6], N2[][] = new int[4][6], M1[][] = new int[4][6], M2[][] = new int[4][6];
		System.out.println("Digite a matriz N1:\n");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				System.out.println("Elemento N1[" + (i + 1) + "][" + (j + 1) + "]");
				N1[i][j] = sc.nextInt();
			}
		}
		System.out.println("Digite a matriz N2:\n");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				System.out.println("Elemento N2[" + (i + 1) + "][" + (j + 1) + "]");
				N2[i][j] = sc.nextInt();
			}
		}
		System.out.println("A matriz de soma M1 é dada por:\n");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				M1[i][j] = N1[i][j] + N2[i][j];
				System.out.print(M1[i][j] + "\t");
			}
			System.out.println();
		}
		System.out.println("\nA matriz de subtração M2 é dada por:\n");
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 6; j++) {
				M2[i][j] = N1[i][j] - N2[i][j];
				System.out.print(M2[i][j] + "\t");
			}
			System.out.println();
		}
		sc.close();
	}
}
