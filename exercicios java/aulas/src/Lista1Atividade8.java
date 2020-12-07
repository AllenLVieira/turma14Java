import java.util.Scanner;

public class Lista1Atividade8 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double custoFabrica, custoConsumidor;
		final double imposto = 0.45;
		final double porcentagemDistribuidor = 0.28;
		System.out.println("Qual o custo de fábrica do carro? R$ ");
		custoFabrica = sc.nextDouble();
		custoConsumidor  = custoFabrica + (custoFabrica*porcentagemDistribuidor) + imposto*custoFabrica;
		System.out.printf("O custo para o consumidor é de R$ %.2f",custoConsumidor, " reais.");
		sc.close();
	}

}
