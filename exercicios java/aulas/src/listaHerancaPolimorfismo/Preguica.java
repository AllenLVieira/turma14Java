package listaHerancaPolimorfismo;

public class Preguica extends Animal {
	public Preguica(String nome, int idade) {
		super(nome, idade);
	}

	public String subirArvore() {
		return "Preguiça subindo árvore";
	}

	@Override
	public String fazerSom() {
		return "fiiiiii";
	}
}
