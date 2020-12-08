import java.util.Scanner;

public class celsius2Fahrenheit {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double grauCelsius, grauFahrenheit;
		System.out.println("Digite a temperatura em graus Celsius: ");
		grauCelsius = sc.nextDouble();
		grauFahrenheit = 9*(grauCelsius/5)+32;
		System.out.printf("\nA temperatura em Fahrenheit é %.2f",grauFahrenheit);
		sc.close();
	}

}
