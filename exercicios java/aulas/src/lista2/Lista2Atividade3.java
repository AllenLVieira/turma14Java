package lista2;

import java.util.Scanner;

public class Lista2Atividade3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double primeiroNum, segundoNum, terceiroNum, quartoNum;
		System.out.println("Digite o primeiro n�mero: ");
		primeiroNum = sc.nextDouble();
		System.out.println("Digite o segundo n�mero: ");
		segundoNum = sc.nextDouble();
		System.out.println("Digite o terceiro n�mero: ");
		terceiroNum = sc.nextDouble();
		System.out.println("Digite o quarto n�mero: ");
		quartoNum = sc.nextDouble();
		if(Math.pow(terceiroNum,2.0) >= 1000.0){
			System.out.println("O n�mero "+ terceiroNum+" ao quadrado � "+
		Math.round(Math.pow(terceiroNum,2.0)*100.0)/100.0);
		}
		else{
			System.out.println("O n�mero "+ primeiroNum+" ao quadrado � "+Math.round(Math.pow(primeiroNum,2.0)*100.0)/100.0);
			System.out.println("O n�mero "+ segundoNum+" ao quadrado � "+Math.round(Math.pow(segundoNum,2.0)*100.0)/100.0);
			System.out.println("O n�mero "+ terceiroNum+" ao quadrado � "+Math.round(Math.pow(terceiroNum,2.0)*100.0)/100.0);
			System.out.println("O n�mero "+ quartoNum+" ao quadrado � "+Math.round(Math.pow(quartoNum,2.0)*100.0)/100.0);
		}
		sc.close();
	}

}
