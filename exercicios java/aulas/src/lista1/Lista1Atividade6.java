package lista1;
import java.util.Scanner;

public class Lista1Atividade6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double pX1, pY1, pX2, pY2, distanciaEntrePontos, auxX, auxY;
		System.out.println("Digite o valor de X do primeiro ponto: ");
		pX1 = sc.nextDouble();
		System.out.println("Digite o valor de Y do primeiro ponto: ");
		pY1 = sc.nextDouble();
		System.out.println("Digite o valor de X do segundo ponto: ");
		pX2 = sc.nextDouble();
		System.out.println("Digite o valor de Y do segundo ponto: ");
		pY2 = sc.nextDouble();
		auxX = Math.pow(pX2 - pX1, 2);
		auxY =Math.pow(pY2 - pY1, 2);
		distanciaEntrePontos = Math.sqrt(auxX + auxY);
		System.out.printf("A distancia entre esses dois pontos no plano é de %.3f",distanciaEntrePontos, " unidades.");
		sc.close();
	}

}
