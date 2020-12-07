import java.util.*;

public class Lista1Atividade1 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		int anosUsuario, mesesUsuario, diasUsuario, diasTotais;
		
		System.out.println("Digite a quantidade de anos que você tem: ");
		anosUsuario = sc.nextInt();
		System.out.println("\nDigite a quantidade de meses que você tem: ");
		mesesUsuario = sc.nextInt();
		System.out.println("\nDigite a quantidade de dias que você tem: ");
		diasUsuario = sc.nextInt();
		diasTotais = 365*anosUsuario + 30*mesesUsuario + diasUsuario;
		System.out.println("\nVocê tem "+diasTotais+" dias de idade.");
		
		sc.close();
	}

}
