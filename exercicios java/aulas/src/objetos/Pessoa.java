package objetos;

public class Pessoa {
	public String nome;
	public char genero;
	public int anoNascimento;
	
	int calcularIdade() {
		return (2020 - this.anoNascimento);
	}
}
