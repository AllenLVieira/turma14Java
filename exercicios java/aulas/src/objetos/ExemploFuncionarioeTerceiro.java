package objetos;

public class ExemploFuncionarioeTerceiro {

	public static void main(String[] args) {
		Funcionario func = new Funcionario("Funcionario 1", 1, 10);
		Terceiro ter = new Terceiro("Terceiro 1", 1, 10, 30);

		/*
		 * func.setHorasMensais(1); func.setValorHora(10); ter.setHorasMensais(1);
		 * ter.setValorHora(10); ter.setValorTerceiro(30);
		 */

		System.out.println(
				"Considerando os dois trabalhaddores com 1 hora mensal e 10 reais a hora, e o terceiro com 30 reais como terceiro");
		System.out.println("Funcionário: " + func.pagamentoSalario());
		System.out.println("Terceiro: " + ter.pagamentoSalario());
	}

}
