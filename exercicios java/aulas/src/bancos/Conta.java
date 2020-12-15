package bancos;

public class Conta {
	private String cpfConta;
	private double saldoConta=0.0;
	private int numConta;

	public Conta(int numConta) {
		super();
		this.numConta = numConta;
	}

	public Conta(int numConta, String cpfConta) {
		super();
		this.cpfConta = cpfConta;
		this.numConta = numConta;
	}
	public double mostraSaldo() {
		return this.saldoConta;
	}
	
	public void depositar(double valor) {
		this.saldoConta = this.saldoConta + valor;
	}
	public void retirar(double valor) {
		this.saldoConta = this.saldoConta - valor;
	}
	
}
