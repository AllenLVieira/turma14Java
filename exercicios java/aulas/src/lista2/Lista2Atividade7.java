package lista2;

import java.util.Scanner;

public class Lista2Atividade7 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double baseTriangulo, alturaTriangulo, areaTriangulo;
		System.out.println("Digite quanto mede a base do tri�ngulo: ");
		baseTriangulo = sc.nextDouble();
		System.out.println("Digite quanto mede a altura do tri�ngulo: ");
		alturaTriangulo = sc.nextDouble();
		if (baseTriangulo > 0.0 && alturaTriangulo > 0.0) {
			areaTriangulo = (baseTriangulo * alturaTriangulo) / 2;
			System.out.println("A �rea do tri�ngulo � " + areaTriangulo);
		} else {
			System.out.println("Voc� n�o pode digitar valores menores ou iguais a 0");
		}
		sc.close();
	}

}
