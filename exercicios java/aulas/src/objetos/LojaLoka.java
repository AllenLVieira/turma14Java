package objetos;

import java.util.Scanner;

public class LojaLoka {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int escolha, qtdEscolha;
		Pessoa cliente = new Pessoa();
		Produto produto1 = new Produto();
		Produto produto2 = new Produto();
		Produto produto3 = new Produto();
		
		produto1.nomeProduto = "Vestido";
		produto1.qtdEstoque = 3;
		produto1.valorUnitario = 100.00;
		produto2.nomeProduto = "Blusa";
		produto2.qtdEstoque = 1;
		produto2.valorUnitario = 50.00;
		produto3.nomeProduto = "Camisa";
		produto3.qtdEstoque = 20;
		produto3.valorUnitario = 20.00;
		
		System.out.println("Digite o seu nome: ");
		cliente.nome = sc.next().toUpperCase();
		System.out.println("Vc é Masculino, Feminino ou Outros: [M/F/O]");
		cliente.genero = sc.next().toUpperCase().charAt(0);
		
		System.out.printf("Bom dia %s !!!\n", cliente.nome);
		System.out.println("PRODUTOs DISPONÍVEIS NO MOMENTO:");
		System.out.printf("PRODUTO 1: %s, qtde: %d, valor R$: %.2f\n", produto1.nomeProduto, produto1.qtdEstoque, produto1.valorUnitario);
		System.out.printf("PRODUTO 2: %s, qtde: %d, valor R$: %.2f\n", produto2.nomeProduto, produto2.qtdEstoque, produto2.valorUnitario);
		System.out.printf("PRODUTO 3: %s, qtde: %d, valor R$: %.2f\n", produto3.nomeProduto, produto3.qtdEstoque, produto3.valorUnitario);

		System.out.println("Digite o numero do produto desejado: ");
		escolha = sc.nextInt();
		System.out.println("Digite a quantidade de produtos desejada: ");
		qtdEscolha = sc.nextInt();
		if(escolha == 1) {
			System.out.printf("O total dessa compra de %d unidades do produto %s é: R$ %.2f",qtdEscolha,produto1.nomeProduto,qtdEscolha*produto1.valorUnitario);
		}
		else if(escolha == 2) {
			System.out.printf("O total dessa compra de %d unidades do produto %s é: R$ %.2f",qtdEscolha,produto2.nomeProduto,qtdEscolha*produto2.valorUnitario);
		}
		else if(escolha == 3) {
			System.out.printf("O total dessa compra de %d unidades do produto %s é: R$ %.2f",qtdEscolha,produto3.nomeProduto,qtdEscolha*produto3.valorUnitario);
		}
		sc.close();
	}

}
