package lista4;

import java.util.Random;

public class Lista4Atividade2 {

	public static void main(String[] args) {
		final int TAMANHO = 10;
		int resultadoDado[] = new int[TAMANHO], ocorrencias[] = { 0, 0, 0, 0, 0, 0 }, somaAux = 0;
		double media;
		int maior = -99;

		System.out.println("Resultados das jogadas de dado:");
		for (int i = 0; i < TAMANHO; i++) {
			resultadoDado[i] = numeroAleatorio(1, 6);
			System.out.println(resultadoDado[i]);
			ocorrencias[resultadoDado[i] - 1] = ocorrencias[resultadoDado[i] - 1] + 1;
			somaAux += resultadoDado[i];
			if (resultadoDado[i] > maior) {
				maior = resultadoDado[i];
			}
		}

		media = somaAux / TAMANHO;
		System.out.println("A média dos valores obtidos no dado foi: " + media);
		System.out.println("\nA face de maior valor nessas 10 jogadas foi " + maior + " com " + ocorrencias[maior - 1]
				+ " repetições.");
	}

	public static int numeroAleatorio(int min, int max) {
		Random r = new Random();
		return r.nextInt((max - min) + 1) + min;
	}
}
