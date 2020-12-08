import java.util.Scanner;

public class calculaIdade {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int anoUsuario;
		System.out.println("Digite em que ano você nasceu (AAAA): ");
		anoUsuario = sc.nextInt();
		if(calcularIdade(anoUsuario) < 18) {
			System.out.println("Oi você tem "+calcularIdade(anoUsuario)+" anos e "
					+ "é considerado infanto-juvenil.");
		}
		else if(calcularIdade(anoUsuario) >= 18 && calcularIdade(anoUsuario)<=60){
			System.out.println("Oi você tem "+calcularIdade(anoUsuario)+" anos e é considerado adulto.");
		}
		else {
			System.out.println("Oi você tem "+calcularIdade(anoUsuario)+" anos e é considerado idoso.");
		}
		sc.close();
		}
	static int calcularIdade(int ano) {
		return (2020-ano);
	}
}
