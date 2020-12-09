package lista3;

import java.util.Scanner;

public class Lista3Atividade1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		final int populacao = 20;
		int somaFilhos = 0, quantidadeFilhosPopulacao = 0;
		double salariosPopulacao, mediaSalario = 0.0, somaSalario = 0.0, mediaFilhos = 0.0;
		double auxMaiorSalario = 0.0, auxSalarioMenor = 0.0, porcentagemSalarioMenor = 0.0;
		for (int i = 0; i < populacao; i++) {
			System.out.println("Digite o salário do  " + (i + 1) + " habitante: ");
			salariosPopulacao = sc.nextDouble();
			
			if (salariosPopulacao > auxMaiorSalario) {
				auxMaiorSalario = salariosPopulacao;
			}
			
			if (salariosPopulacao < 100) {
				auxSalarioMenor += 1;
			}
			somaSalario = somaSalario + salariosPopulacao;
		}
		mediaSalario = somaSalario / populacao;
		porcentagemSalarioMenor = (auxSalarioMenor / populacao) * 100;
		for (int i = 0; i < populacao; i++) {
			System.out.println("Digite quantos filhos o " + (i + 1) + " habitante possui: ");
			quantidadeFilhosPopulacao = sc.nextInt();
			somaFilhos = somaFilhos + quantidadeFilhosPopulacao;
		}
		mediaFilhos = somaFilhos / populacao;
		System.out.println("A média salarial é: " + Math.round(mediaSalario * 100.0) / 100.0);
		System.out.println("A média de filhos é: " + Math.round(mediaFilhos * 100.0) / 100.0);
		System.out.println("O maior salário é " + auxMaiorSalario);
		System.out.println("A porcentagem de salário abaixo de R$ 100.00 é: "
				+ Math.round(porcentagemSalarioMenor * 100.0) / 100.0 + "%.");
		sc.close();
	}

}
