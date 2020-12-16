package lista5;

import java.util.Scanner;

public class Lista5Atividade3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		int vetorIntervalos[] = new int[] { 0, 0, 0, 0 };
		System.out.println("Digite valores+ e quando quiser parar digite um valor negativo.");
		do {
			num = sc.nextInt();
			if (num >= 0 && num <= 25) {
				vetorIntervalos[0]++;
			} else if (num >= 26 && num <= 50) {
				vetorIntervalos[1]++;
			} else if (num >= 51 && num <= 75) {
				vetorIntervalos[2]++;
			} else if (num >= 76) {
				vetorIntervalos[3]++;
			}
		} while (num >= 0);
		System.out.println("De 0 a 25+ tiveram " + vetorIntervalos[0] + " valores.");
		System.out.println("De 26 a 50+ tiveram " + vetorIntervalos[1] + " valores.");
		System.out.println("De 51 a 75+ tiveram " + vetorIntervalos[2] + " valores.");
		System.out.println("De 76++ tiveram " + vetorIntervalos[3] + " valores.");
		sc.close();
	}

}
