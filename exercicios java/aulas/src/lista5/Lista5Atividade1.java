package lista5;

import java.util.Scanner;

public class Lista5Atividade1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double precoEtiqueta, precoFinal;
		int opcao;
		System.out.println("Qual o valor de etiqueta do produto? R$ ");
		precoEtiqueta = sc.nextDouble();
		System.out.println("[1] - À vista em dinheiro ou cheque");
		System.out.println("[2] - À vista no cartão de crédito");
		System.out.println("[3] - Parcelado em duas vezes");
		System.out.println("[4] - Parcelado em três vezes");
		System.out.println("Digite qual opção de pagamento: ");
		opcao = sc.nextInt();
		switch(opcao)
		{
		case 1:
			precoFinal = validarPrecoFinal(precoEtiqueta,-0.2);
			System.out.println("o preço de R$ "+precoEtiqueta+" está saindo por R$"+precoFinal);
			break;
		case 2:
			precoFinal = validarPrecoFinal(precoEtiqueta,-0.15);
			System.out.println("o preço de R$ "+precoEtiqueta+" está saindo por R$"+precoFinal);
			break;
		case 3:
			precoFinal = validarPrecoFinal(precoEtiqueta,0.0);
			System.out.println("O valor final da sua compra é R$ "+precoFinal);
			break;
		case 4:
			precoFinal = validarPrecoFinal(precoEtiqueta,0.1);
			System.out.println("O valor final da sua compra é R$ "+precoFinal);
			break;
		default:
			System.out.println("Valor digitado foi incorreto.");
		}
		sc.close();
	}

	static double validarPrecoFinal(double preco, double porcentagem){
		return (preco * (1+porcentagem));
	}

}

