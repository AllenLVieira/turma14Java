import java.util.Scanner;

public class Lista1Atividade2 {

	public static void main(String[] args) {
		
		int anosResultado, mesesResultado, diasUsuario, diasResultado;
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Digite a quantidade de dias que você quer converter: ");
		diasUsuario = sc.nextInt();
		anosResultado = diasUsuario/365;
		mesesResultado = (diasUsuario%365)/30;
		diasResultado = (diasUsuario%365)%30;
		System.out.println("Você tem "+anosResultado+" ano(s)+ "+mesesResultado+" mes(s) e "+diasResultado+" dia(s) de vida.");
		
		sc.close();
	}

}
