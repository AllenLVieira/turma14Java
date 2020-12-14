package listaObjetos;

import java.util.Scanner;

public class Principal {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Cliente cliente1 = new Cliente("01046752251");
		System.out.println("Digite o primeiro nome: ");
		cliente1.primeiroNome = sc.next();
		System.out.println("Digite o último nome: ");
		cliente1.ultimoNome = sc.next();
		cliente1.getNomeCompleto();
		cliente1.getCPF();
		
		linha(80);
		
		Aviao aviao1 = new Aviao("X-15");
		aviao1.velocidadeMaxima = 7274;
		System.out.println("O avião "+aviao1.modelo+" chega a "+aviao1.velocidadeMaxima+" km/h!");
		aviao1.decolarVoo();
		aviao1.pousarVoo();
		
		linha(80);
		
		ProdutoEletronico p = new ProdutoEletronico("Celular", "Samsung");
		p.getProduto();
		
		linha(80);
		
		Funcionario f = new Funcionario();
		f.nome = "Jeffrey";
		f.matricula = 666;
		f.getNomeMatricula();
		
		linha(80);
		
		Patinete pat = new Patinete("Rosa","Allen");
		System.out.println(pat.mostrarDono());
		
		linha(80);
		
		ContaB conta = new ContaB(1);
		conta.getSaldo();
		
		linha(80);
		
		Paciente alergico = new Paciente(true);
		System.out.println("Qual o nome do paciente? ");
		alergico.nome = sc.next();
		alergico.avisoAlergico();
		sc.close();
	}
	public static void linha(int tamanho) {
		for(int i=1; i <= tamanho;i++) {
			System.out.print("-");
		}
		System.out.println();
	}
}
