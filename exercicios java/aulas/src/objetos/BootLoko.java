package objetos;

import java.util.Scanner;

public class BootLoko {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Pessoa visitante = new Pessoa();
		
		System.out.println("Digite o seu nome: ");
		visitante.nome = sc.next().toUpperCase();
		System.out.println("Voc� se define como Masculino, Feminino ou Outros: [M/F/O]");
		visitante.genero = sc.next().toUpperCase().charAt(0);
		System.out.println("Digite o seu ano de nascimento: ");
		visitante.anoNascimento = sc.nextInt();
		
		if(visitante.genero == 'M') {
			System.out.printf("Seja bem vindo %s!\n",visitante.nome);
		}
		else if(visitante.genero == 'F') {
			System.out.printf("Seja bem vinda %s!\n",visitante.nome);
		}
		else if(visitante.genero == 'O') {
			System.out.printf("Seja bem vindx %s!\n",visitante.nome);
		}
		if(visitante.calcularIdade() < 18) {
			System.out.println("Voc� est� na categoria: Boot Jovem [Boot arduino]");
		}
		else if(visitante.calcularIdade() >=18 && visitante.calcularIdade() < 55) {
			System.out.println("Voc� est� na categoria: Javeiro [Boot Java]");
		}
		else {
			System.out.println("Voc� est� na categoria: Old Boot [Boot da melhor idade]");
		}
		sc.close();
	}

}
