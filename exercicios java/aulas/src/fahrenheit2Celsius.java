import java.util.Scanner;

public class fahrenheit2Celsius {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double grauCelsius, grauFahrenheit;
		System.out.println("Digite a temperatura em graus Fahrenheit: ");
		grauFahrenheit = sc.nextDouble();
		grauCelsius = 5*(grauFahrenheit-32)/9;
		System.out.printf("\nA temperatura em Fahrenheit é %.1f",grauCelsius);
		sc.close();
	}

}
