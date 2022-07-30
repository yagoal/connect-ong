package teste;

import dao.DaoPhone;
import model.Phone;

public class teste {

	public static void main(String[] args) {
	
		DaoPhone daotel = new DaoPhone();
		Phone tel = new Phone("32816655", "75", "55");
				
		daotel.save(tel);
		System.out.println(daotel.retrieveById(1).getNumber());
		System.out.println("Teste");
		
		
	}

}
