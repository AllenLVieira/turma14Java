package lista3;

import java.util.Scanner;

public class Lista3Atividade6 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num, i=0, soma=0;
		System.out.println("Digite um valor: ");
		num = sc.nextInt();
		do
		{
			i++;
			soma += i;
		} while(i< num);
		System.out.println(soma);
		sc.close();
	}

}
