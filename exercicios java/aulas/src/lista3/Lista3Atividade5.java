package lista3;

public class Lista3Atividade5 {

	public static void main(String[] args) {
		int num = 233;
		do {
			System.out.println(num + ", ");
			if (num >= 300 && num <= 400) {
				num += 3;
			} else {
				num += 5;
			}

		} while (num <= 456);

	}

}
