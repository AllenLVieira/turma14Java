package lista2;

import java.util.Scanner;

public class Lista2Atividade1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double pesoTomate, E=0.0, M=0.0;
		final double multaPorQuilo = 4.0;
		final double pesoMaximoTomate = 50.0;
		System.out.println("Jo�o, quantos quilos de tomate voc� trouxe hoje? ");
		pesoTomate = sc.nextDouble();
		if(pesoTomate >= 0){
			if(pesoTomate > pesoMaximoTomate){
				E = pesoTomate - pesoMaximoTomate;
				M = E * multaPorQuilo;
			}
			System.out.println("\nJo�o, voc� trouxe " + pesoTomate + 
					" quilos de tomate. Com "+ Math.round(E*100.0)/100.0 +
					" quilos de excesso, e R$ "+ Math.round(M*100.0)/100.0+ " reais de multa.");
		}
		else
		{
			System.out.println("\nJo�o, voc� digitou um peso inv�lido. Lembre-se que o peso deve ser maior ou igual a zero.");
		}
		sc.close();
	}

}
