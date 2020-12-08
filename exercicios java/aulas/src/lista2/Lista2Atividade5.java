package lista2;

import java.util.Scanner;

public class Lista2Atividade5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		final double limiteInferiorAceitavel = 0.05;
		final double limiteSuperiorAceitavel =0.25;
		double indicePoluicaoAtual;
		System.out.println("Digite o �ndice de polui��o registrado: ");
		indicePoluicaoAtual = sc.nextDouble();
		if(indicePoluicaoAtual>=0){
			if(indicePoluicaoAtual >= limiteInferiorAceitavel && indicePoluicaoAtual <= limiteSuperiorAceitavel){
				System.out.println("Os grupos est�o dentro dos par�metros aceit�veis de polui��o."
						+ " Portanto, podem continuar atuando.");
			}
			else if(indicePoluicaoAtual >= 0.3 && indicePoluicaoAtual < 0.4){
				System.out.println("As ind�strias do 1� grupo devem suspender suas "
						+ "atividades imediatamente.");
			}
			else if(indicePoluicaoAtual >= 0.4 && indicePoluicaoAtual < 0.5){
				System.out.println("As ind�strias do 1� e 2� grupo devem suspender "
						+ "suas atividades imediatamente.");
			}
			else if(indicePoluicaoAtual >= 0.5){
				System.out.println("Todas as ind�strias devem suspender suas atividades "
						+ "imediatamente.");
			}
			else{
				System.out.println("Os grupos est�o poluindo menos que o limite aceit�vel."
						+ " Parab�ns!");
			}
		}
		else{
			System.out.println("�ndice inv�lido.");
		}
		sc.close();
	}

}
