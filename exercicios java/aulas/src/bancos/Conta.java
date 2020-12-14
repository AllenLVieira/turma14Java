package bancos;

public class Conta {
	public String cpfConta;
	public double saldoConta;
	public int numConta;

	public Conta(int numConta) {
		super();
		this.numConta = numConta;
	}

	public Conta(String cpfConta, int numConta) {
		super();
		this.cpfConta = cpfConta;
		this.numConta = numConta;
	}
}
