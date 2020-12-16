import java.util.Scanner;

public class cadAlunos {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String nomeAlunos[] = new String[] { "Allen de Lima Vieira", "Andr� de Brito Silva da Costa",
				"B�rbara Liboni Guerra", "Beatriz Martins", "Beymar Jhoel Acapa Lima",
				"Breno Nogueira Botelho Noccioli", "Daniel Augusto Gomes Ferreira Filho", "Danilo Mendes Ferreira",
				"Danilo Pereira da Silva", "Davi Silva Vieira", "Diego Vinicio da Silva Nascimento",
				"Erick Costa Ferreira", "Ewerton Inacio Lima", "Fernanda Agapito", "Fernanda Barbosa Ferraz",
				"Francisco Jos� Pires", "Gabriel Enrique Cabral", "Gabriel S�rgio Nascimento Santos Gon�alves",
				"Gide�o da Silva Idelfonso", "Gilson Amorim de Matos", "Guilherme Gon�alves da Silva",
				"Gustavo Rabelo Teles", "Heloisa Beatriz de Oliveira Costa", "Igor Mateus Queiroz Gato",
				"Isabel Emiko Yamakawa Oyama", "Jackeline Akemi de Moura", "Jos� Jorge Hauck J�nior",
				"Juliana Santos Andr�", "K�lven Cleiton de Ara�jo Brand�o", "La�s Lima Santos", "Lucas Anseloni Barros",
				"Lucas Gon�alves da Silva", "Luis felipe da silva", "Luiz Felipe da Silva Magalh�es",
				"Marcos Eduardo Gomes Gon�alves", "Micaely da Silva Lima", "Rafaela Oliveira Silva",
				"Tiago dos Santos Martins", "Ver�nica Navarro Almenara", "Vinicius Alves Miranda" };
		char generoAlunos[] = new char[] { 'M', 'M', 'F', 'F', 'M', 'M', 'M', 'M', 'M', 'M', 'M', 'M', 'M', 'F', 'F',
				'M', 'M', 'M', 'M', 'M', 'M', 'M', 'F', 'M', 'F', 'F', 'M', 'F', 'M', 'F', 'M', 'M', 'M', 'M', 'M', 'F',
				'F', 'M', 'F', 'M' };
		int matriculas[] = new int[40];
		int mat, pesquisa = 0;
		double notaAlunos[] = new double[40];
		char escolha;
		
		

		System.out.println("MAT\tTIPO\tNOME");
		for (int i = 0; i < 40; i++) {
			matriculas[i] = i + 1;
			if (generoAlunos[i] == 'M') {
				System.out.printf("%d\t%s\t%s\n", matriculas[i], "Aluno", nomeAlunos[i]);
			} else {
				System.out.printf("%d\t%s\t%s\n", matriculas[i], "Aluna", nomeAlunos[i]);
			}
		}

		do {
			System.out.println("Digite o n�mero da matr�cula para incluir nota: ");
			mat = sc.nextInt();
			for (int i = 0; i < 40; i++) {
				if (matriculas[i] == mat) {
					pesquisa = i;
				}
			}
			System.out.println("Foi escolhido: ");
			System.out.printf("%d\t%s\n", matriculas[pesquisa], nomeAlunos[pesquisa]);
			System.out.println("Digite a nota: ");
			notaAlunos[pesquisa] = sc.nextDouble();
			do {
				System.out.println("Deseja continuar digitando notas (S ou N)?");
				escolha = sc.next().toUpperCase().charAt(0);
			} while (escolha != 'S' && escolha != 'N');
		} while (escolha != 'N');
		System.out.println("MAT\tTIPO\tNOTA\tNOME");
		for (int i = 0; i < 40; i++) {
			if (notaAlunos[i] != 0) {
				if (generoAlunos[i] == 'M') {
					System.out.printf("%d\t%s\t%.2f\t%s\n", matriculas[i], "Aluno", notaAlunos[i], nomeAlunos[i]);
				} else {
					System.out.printf("%d\t%s\t%.2f\t%s\n", matriculas[i], "Aluna", notaAlunos[i], nomeAlunos[i]);
				}
			}
		}
		sc.close();
	}

}
