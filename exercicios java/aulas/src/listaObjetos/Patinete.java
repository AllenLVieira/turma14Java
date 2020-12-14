package listaObjetos;

public class Patinete {
	String cor;
	String dono;
	
	public Patinete(String c, String d) {
		this.cor = c;
		this.dono = d;
	}
	
	public String mostrarDono() {
		return "O patinete "+this.cor+" pertence a " + this.dono;
	}
}
