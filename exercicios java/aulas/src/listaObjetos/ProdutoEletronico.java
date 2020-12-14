package listaObjetos;

public class ProdutoEletronico {
	public String categoria;
	public String marca;
	
	public ProdutoEletronico(String c, String m) {
		this.categoria = c;
		this.marca = m;
	}
	
	public void getProduto() {
		System.out.println("O produto é da categoria "+this.categoria+ " e da marca "+this.marca);
	}
}
