package lista2;

import java.util.Scanner;

public class Lista2Atividade5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		final double limiteInferiorAceitavel = 0.05;
		final double limiteSuperiorAceitavel =0.25;
		double indicePoluicaoAtual;
		System.out.println("Digite o índice de poluição registrado: ");
		indicePoluicaoAtual = sc.nextDouble();
		if(indicePoluicaoAtual>=0){
			if(indicePoluicaoAtual >= limiteInferiorAceitavel && indicePoluicaoAtual <= limiteSuperiorAceitavel){
				System.out.println("Os grupos estão dentro dos parâmetros aceitáveis de poluição."
						+ " Portanto, podem continuar atuando.");
			}
			else if(indicePoluicaoAtual >= 0.3 && indicePoluicaoAtual < 0.4){
				System.out.println("As indústrias do 1º grupo devem suspender suas "
						+ "atividades imediatamente.");
			}
			else if(indicePoluicaoAtual >= 0.4 && indicePoluicaoAtual < 0.5){
				System.out.println("As indústrias do 1º e 2º grupo devem suspender "
						+ "suas atividades imediatamente.");
			}
			else if(indicePoluicaoAtual >= 0.5){
				System.out.println("Todas as indústrias devem suspender suas atividades "
						+ "imediatamente.");
			}
			else{
				System.out.println("Os grupos estão poluindo menos que o limite aceitável."
						+ " Parabéns!");
			}
		}
		else{
			System.out.println("Índice inválido.");
		}
		sc.close();
	}

}
