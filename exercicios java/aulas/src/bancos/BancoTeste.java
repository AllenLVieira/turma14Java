package bancos;

import java.util.Scanner;

public class BancoTeste {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double deposito, saldo;
		System.out.println("Banco Teste para uso");
		Conta cliente1 = new Conta(1);
		System.out.println("Quanto tu quer depositar parça: ");
		deposito = sc.nextDouble();
		
		cliente1.depositar(deposito);
		
		saldo = cliente1.mostraSaldo();
		
		System.out.println(saldo);
		sc.close();
	}

}
