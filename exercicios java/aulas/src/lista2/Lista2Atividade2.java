package lista2;

import java.util.Scanner;

public class Lista2Atividade2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double N, E=0.0;
		String C;
		final double salarioHora = 10.0;
		final double limiteHoras = 50.0;
		final double salarioExtra = 20.0; 
		double salarioTotal;
		System.out.println("Digite seu código de funcionario: ");
		C = sc.nextLine();
		System.out.println("Digite quantas horas trabalhou:  ");
		N = sc.nextDouble();
		if(N >= 0){
			if(N > limiteHoras){
				E = (N - limiteHoras)*salarioExtra;
				salarioTotal = limiteHoras*salarioHora + E;
			}
			else{
				salarioTotal = N*salarioHora;
			}
			System.out.println(C+" você trabalhou "+ N+ " horas. E receberá R$ "+ 
			Math.round(salarioTotal*100.0)/100.0 + " de salário total, sendo R$ "+
					Math.round(E*100.0)/100.0 + " de hora extra.");
		}
		else
		{
			System.out.println(C+" você digitou uma quantidade de horas inválida. "
					+ "Lembre-se que as horas trabalhadas devem ser maior ou igual a zero.");
		}
		sc.close();
	}
}
