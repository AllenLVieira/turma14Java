package listaHerancaPolimorfismo;

public class Cavalo extends Animal {

	public Cavalo(String nome, int idade) {
		super(nome, idade);
	}

	public String correr() {
		return "Cavalo correndo";
	}

	@Override
	public String fazerSom() {
		return "Ri ri ri";
	}
}
