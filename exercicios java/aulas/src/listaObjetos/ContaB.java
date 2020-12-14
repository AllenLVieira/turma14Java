package listaObjetos;

public class ContaB {
	public String cpfConta;
	public double saldoConta;
	public int numConta;

	public ContaB(int numConta) {
		super();
		this.numConta = numConta;
	}

	public ContaB(String cpfConta, int numConta) {
		super();
		this.cpfConta = cpfConta;
		this.numConta = numConta;
	}
	
	public void getSaldo() {
		System.out.println("O saldo da sua conta é: "+(Math.round(Math.random()*10000)*100.0)/100.0);
	}
}
