package lista2;

import java.util.Scanner;

public class Lista2Atividade4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numUsuario;
		System.out.println("Digite um n�mero: ");
		numUsuario = sc.nextInt();
		if(numUsuario != 0){
			if(numUsuario%2==0){
				System.out.println("O n�mero "+ numUsuario+ " � par.");
			}
			else{
				System.out.println("O n�mero "+ numUsuario+ " � �mpar.");
			}
		}
		else{
			System.out.println("O n�mero 0 � par, pois compartilha de todas as propriedades"
					+ " de um n�mero par: � m�ltiplo de 2, � divis�vel por 2, cercado por "
					+ "dois n�meros �mpares e etc..");
		}
		if(numUsuario > 0){
			System.out.println("O n�mero "+ numUsuario+ " � positivo.");
		}
		else if(numUsuario < 0){
			System.out.println("O n�mero "+ numUsuario+ " � negativo.");
		}
		else{
			System.out.println("O n�mero "+ numUsuario+ " n�o � positivo nem negativo.");
		}
		sc.close();
	}

}
