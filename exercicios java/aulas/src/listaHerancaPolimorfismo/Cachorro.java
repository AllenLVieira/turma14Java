package listaHerancaPolimorfismo;

public class Cachorro extends Animal {

	public Cachorro(String nome, int idade) {
		super(nome, idade);
	}

	public String correr() {
		return "Cachorro correndo";
	}

	@Override
	public String fazerSom() {
		return "Au au";
	}
}
