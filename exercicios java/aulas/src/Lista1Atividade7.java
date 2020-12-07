import java.util.Scanner;

public class Lista1Atividade7 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double coefA, coefB, resultadoEq1, coefD,coefE,resultadoEq2, resultadoX, resultadoY;
		System.out.println("Digite o coeficiente A do primeiro ponto: ");
		coefA = sc.nextDouble();
		System.out.println("Digite o coeficiente B do primeiro ponto: ");
		coefB = sc.nextDouble();
		System.out.println("Digite o resultado da primeira equação: ");
		resultadoEq1 = sc.nextDouble();
		System.out.println("Digite o coeficiente D do segundo ponto: ");
		coefD = sc.nextDouble();
		System.out.println("Digite o coeficiente E do segundo ponto: ");
		coefE = sc.nextDouble();
		System.out.println("Digite o resultado da segunda equação: ");
		resultadoEq2 = sc.nextDouble();
		resultadoX = (resultadoEq1*coefE - coefB*resultadoEq2)/(coefA*coefE - coefB*coefD);
		resultadoY = (coefA*resultadoEq2 - resultadoEq1*coefD)/(coefA*coefE - coefB*coefD);
		System.out.printf("O valor de X é de %.1f",resultadoX);
		System.out.printf("\nE o valor de Y é de %.1f",resultadoY,"!");	
		sc.close();
	}

}
