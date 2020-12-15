package listaObjetos;

public class Cliente {
	public String primeiroNome;
	public String ultimoNome;
	public String cpf;
	
	public Cliente(String cpf) {
		this.cpf = cpf;
	}
	
	public void getNomeCompleto() {
		System.out.println(this.primeiroNome + " " + this.ultimoNome);
	}
	
	
	
	public void getCPF() {
		System.out.println(this.cpf);
	}
}
