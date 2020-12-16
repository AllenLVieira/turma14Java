package listaHerancaPolimorfismo;

public class Questao2 {

	public static void main(String[] args) {
		Animal a = new Cachorro("Dog",2);
		Animal b = new Cavalo("Horse",5);
		Animal c = new Preguica("Sloth",1);
		
		System.out.println("Animal a: "+a.fazerSom());
		System.out.println("Animal b: "+b.fazerSom());
		System.out.println("Animal c: "+c.fazerSom());
	}

}
