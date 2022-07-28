package view;

import controller.DaoTelefone;
import model.Telefone;

public class teste {

	public static void main(String[] args) {

		DaoTelefone daotel = new DaoTelefone();
		Telefone tel = new Telefone("32816655", "75", "55");
		
//		daotel.save(tel);
//		System.out.println(daotel.retrieveById(1).getNumero());

	}

}
