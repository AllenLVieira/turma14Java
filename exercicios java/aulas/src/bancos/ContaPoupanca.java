package bancos;

public class ContaPoupanca extends Conta {

	private int dataAniversarioConta;

	public ContaPoupanca(int numConta, String cpfConta, int dataAniversarioConta) {
		super(numConta, cpfConta);
		this.dataAniversarioConta = dataAniversarioConta;
	}

	public int getDataAniversarioConta() {
		return dataAniversarioConta;
	}

	public void setDataAniversarioConta(int dataAniversarioConta) {
		this.dataAniversarioConta = dataAniversarioConta;
	}
}