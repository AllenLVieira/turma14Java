package listaHerancaEncapsulamento;

import java.util.Scanner;

public class MainQuestao2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Pessoa pessoa = new Pessoa();
		Fornecedor forn = new Fornecedor("Allen", "(11) 95949-2409");
		Pessoa pessoa2 = new Pessoa("Nome setado", "Endereço setado", "Telefone setado");
		String nome, telefone, end;
		double cred, debito;
		System.out.println("Digite o nome da pessoa (Classe pessoa): ");
		nome = sc.nextLine();
		pessoa.setNome(nome);
		System.out.println("Digite o número de telefone dessa pessoa: ");
		telefone = sc.nextLine();
		pessoa.setTelefone(telefone);
		System.out.println("Digite o endereço dessa pessoa: ");
		end = sc.nextLine();
		pessoa.setEndereco(end);
		System.out.println("Construtor padrão:");
		System.out.println("\tNome: " + pessoa.getNome() + " Telefone: " + pessoa.getTelefone() + " Endereço: "
				+ pessoa.getEndereco());
		System.out.println("Construtor exigindo objeto com as 3 características");
		System.out.println("\tNome: " + pessoa2.getNome() + " Telefone: " + pessoa2.getTelefone() + " Endereço: "
				+ pessoa2.getEndereco());
		System.out.println("Classe fornecedor:");
		System.out.println("Qual o crédito desse fornecedor: ");
		cred = sc.nextDouble();
		System.out.println("Qual a dívida desse fornecedor: ");
		debito = sc.nextDouble();
		forn.setValorCredito(cred);
		forn.setValorDivida(debito);
		System.out.println("Usando construtor que exige 2 atributos: ");
		System.out.println(
				"\tNome: " + forn.getNome() + " Telefone: " + forn.getTelefone() + " Saldo: R$" + forn.obterSaldo());
		sc.close();
	}

}
