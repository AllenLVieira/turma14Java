package lista1;
import java.util.Scanner;

public class Lista1Atividade5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double notaA, notaB, notaC, mediaFinal;
		System.out.println("Digite o nota A: ");
		notaA = sc.nextDouble();
		System.out.println("Digite o nota B: ");
		notaB = sc.nextDouble();
		System.out.println("Digite o nota C: ");
		notaC = sc.nextDouble();
		mediaFinal = (2*notaA + 3*notaB + 5*notaC)/(2 + 3 + 5);
		System.out.printf("A sua média final é %.2f",mediaFinal,"!");
		sc.close();
	}

}
