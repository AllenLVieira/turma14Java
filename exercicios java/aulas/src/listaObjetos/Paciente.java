package listaObjetos;

public class Paciente {
	boolean alergico;
	String nome;

	public Paciente(boolean a) {
		this.alergico = a;
	}

	public void avisoAlergico() {
		if (this.alergico == true) {
			System.out.println("Cuidado ao medicar " + this.nome + ", pois este paciente tem alergia.");
		} else {
			System.out.println("O paciente " + this.nome + " diz não ter alergia a remédios.");
		}
	}
}
