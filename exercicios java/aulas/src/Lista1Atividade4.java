import java.util.Scanner;
import java.lang.Math;

public class Lista1Atividade4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int valorA, valorB, valorC;
		double valorD, valorR, valorS;
		System.out.println("Digite o valor A: ");
		valorA = sc.nextInt();
		System.out.println("Digite o valor B: ");
		valorB = sc.nextInt();
		System.out.println("Digite o valor C: ");
		valorC = sc.nextInt();
		valorR = Math.pow((valorA+valorB), 2);
		valorS = Math.pow((valorB+valorC), 2);
		valorD = (valorR + valorS)/2;
		System.out.printf("O valor de D equivale a %.2f",valorD,".");
		sc.close();
	}

}
