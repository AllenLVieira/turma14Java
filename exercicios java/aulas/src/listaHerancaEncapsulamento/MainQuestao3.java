package listaHerancaEncapsulamento;

public class MainQuestao3 {

	public static void main(String[] args) {
		Empregado emp = new Empregado("Jeffrey", "(66)99999-9666", 1000, 0.05);
		System.out.println("Considerando um salário base de R$ 1000 e imposto de 5%:");
		System.out.println("Nome: " + emp.getNome() + " Telefone: " + emp.getTelefone() + " Salário líquido: "
				+ emp.calcularSalario());
	}

}
