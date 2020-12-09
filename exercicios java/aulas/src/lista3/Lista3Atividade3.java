package lista3;

import java.util.Scanner;

public class Lista3Atividade3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num = 0, soma = 0;
		double media;
		int contador = 0;
		System.out
				.println("Digite valores positivos a serem somados.\nCaso queira finalizar, digite um valor negativo");
		while (num >= 0) {
			System.out.println("\nDigite o valor desejado: ");
			num = sc.nextInt();
			if (num > 0) {
				soma += num;
				contador += 1;
			}

		}
		media = soma / contador;
		System.out.println("Quantidade de números digitados: "+ contador);
		System.out.println("\nA soma desses números é: "+ soma);
		System.out.println("\nA média desses números é: "+ Math.round(media*100.0)/100.0);
		sc.close();
	}

}
