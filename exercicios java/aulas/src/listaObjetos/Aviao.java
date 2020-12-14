package listaObjetos;

public class Aviao {
	public String modelo;
	public int velocidadeMaxima;
	
	public Aviao(String nome) {
		this.modelo = nome;
	}
	
	public void decolarVoo() {
		System.out.println("O avião "+this.modelo+" acabou de decolar!");
	}
	
	public void pousarVoo() {
		System.out.println("O avião "+this.modelo+" acabou de pousar!");
	}
}
