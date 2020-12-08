package lista2;

import java.util.Scanner;

public class Lista2Atividade4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int numUsuario;
		System.out.println("Digite um número: ");
		numUsuario = sc.nextInt();
		if(numUsuario != 0){
			if(numUsuario%2==0){
				System.out.println("O número "+ numUsuario+ " é par.");
			}
			else{
				System.out.println("O número "+ numUsuario+ " é ímpar.");
			}
		}
		else{
			System.out.println("O número 0 é par, pois compartilha de todas as propriedades"
					+ " de um número par: é múltiplo de 2, é divisível por 2, cercado por "
					+ "dois números ímpares e etc..");
		}
		if(numUsuario > 0){
			System.out.println("O número "+ numUsuario+ " é positivo.");
		}
		else if(numUsuario < 0){
			System.out.println("O número "+ numUsuario+ " é negativo.");
		}
		else{
			System.out.println("O número "+ numUsuario+ " não é positivo nem negativo.");
		}
		sc.close();
	}

}
