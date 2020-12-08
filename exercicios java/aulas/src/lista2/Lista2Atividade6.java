package lista2;

import java.util.Scanner;

public class Lista2Atividade6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int idadeNadador;
		System.out.println("Digite a sua idade: ");
		idadeNadador = sc.nextInt();
		if (idadeNadador >= 0) {
			if (idadeNadador >= 5 && idadeNadador <= 7) {
				System.out.println("Você faz parte do Infantil A");
			} else if (idadeNadador >= 8 && idadeNadador <= 11) {
				System.out.println("Você faz parte do Infantil B");
			} else if (idadeNadador >= 12 && idadeNadador <= 13) {
				System.out.println("Você faz parte do Juvenil A");
			} else if (idadeNadador >= 14 && idadeNadador <= 17) {
				System.out.println("Você faz parte do Juvenil B");
			} else if (idadeNadador >= 18) {
				System.out.println("Você faz parte da modalidade Adulto");
			} else {
				System.out.println("Você não tem idade para competir.");
			}
		} else {
			System.out.println("A idade não pode ser negativa.");
		}
		sc.close();
	}

}
