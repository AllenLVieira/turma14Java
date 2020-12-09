package lista3;

import java.util.Scanner;

public class Lista3Atividade4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int num;
		System.out.println("Digite um valor:\n");
		num = sc.nextInt();
		while (num<100){
			num = num*3;
			System.out.println(num);
			
		}
		sc.close();
	}

}
