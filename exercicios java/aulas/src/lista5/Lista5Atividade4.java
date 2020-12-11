package lista5;

public class Lista5Atividade4 {

	public static void main(String[] args) {
		int n = -1;
		double R = 0.0;
		for (int d = 1; d <= 50; d++) {
			n = n + 2;
			R = R + n / d;
			System.out.println(" + " + n + "/" + d);
		}
		System.out.println("\nO resultado dessa soma é: " + Math.round(R * 100.0) / 100.0);

	}

}
