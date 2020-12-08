package lista2;

import java.util.Scanner;

public class Lista2Atividade3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double primeiroNum, segundoNum, terceiroNum, quartoNum;
		System.out.println("Digite o primeiro número: ");
		primeiroNum = sc.nextDouble();
		System.out.println("Digite o segundo número: ");
		segundoNum = sc.nextDouble();
		System.out.println("Digite o terceiro número: ");
		terceiroNum = sc.nextDouble();
		System.out.println("Digite o quarto número: ");
		quartoNum = sc.nextDouble();
		if(Math.pow(terceiroNum,2.0) >= 1000.0){
			System.out.println("O número "+ terceiroNum+" ao quadrado é "+
		Math.round(Math.pow(terceiroNum,2.0)*100.0)/100.0);
		}
		else{
			System.out.println("O número "+ primeiroNum+" ao quadrado é "+Math.round(Math.pow(primeiroNum,2.0)*100.0)/100.0);
			System.out.println("O número "+ segundoNum+" ao quadrado é "+Math.round(Math.pow(segundoNum,2.0)*100.0)/100.0);
			System.out.println("O número "+ terceiroNum+" ao quadrado é "+Math.round(Math.pow(terceiroNum,2.0)*100.0)/100.0);
			System.out.println("O número "+ quartoNum+" ao quadrado é "+Math.round(Math.pow(quartoNum,2.0)*100.0)/100.0);
		}
		sc.close();
	}

}
