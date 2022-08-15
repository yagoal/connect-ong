package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dao.DaoGeneric;

public class teste {

	public static void main(String[] args) {
		
		String login = "valdemilson.lins@gmail.com";
		String password = "jumento";
		
		System.out.println(DaoGeneric.getInstance().hasUser(login, password));
		
//		Person ad1 = (Person) DaoGeneric.getInstance().retrieveById(Person.class, 1);
//		Person ad2 = (Person) DaoGeneric.getInstance().retrieveById(Person.class, 2);
//		Person ad3 = (Person) DaoGeneric.getInstance().retrieveById(Person.class, 3);
//		Person ad4 = (Person) DaoGeneric.getInstance().retrieveById(Person.class, 4);
//		Person ad5 = (Person) DaoGeneric.getInstance().retrieveById(Person.class, 5);
//		Person ad6 = (Person) DaoGeneric.getInstance().retrieveById(Person.class, 6);
//		
//		
//		
//		
//		
//		
//		
//		User a1 = new User(ad1, "pipoka666", "aaaaaaa", donatelist);
//		User a2 = new User(ad2, "val666", "aaaaaaa", null);
//		User a3 = new User(ad3, "yago666", "aaaaaaa", null);
//		User a4 = new User(ad4, "arthur666", "aaaaaaa", null);
//		User a5 = new User(ad5, "mari666", "aaaaaaa", null);
//		User a6 = new User(ad6, "taysla666", "aaaaaaa", null);
//		
//		DaoGeneric.getInstance().save(a1);
//		DaoGeneric.getInstance().save(a2);
//		DaoGeneric.getInstance().save(a3);
//		DaoGeneric.getInstance().save(a4);
//		DaoGeneric.getInstance().save(a5);
//		DaoGeneric.getInstance().save(a6);
		
//		Donate d1 = new Donate(new Date(), 300.0);
//		Donate d2 = new Donate(new Date(), 400.0);
//		List<Donate> donatelist = new ArrayList<Donate>();
//		
//		donatelist.add(d1);
//		donatelist.add(d2);
//		
//		User u1 = (User)DaoGeneric.getInstance().retrieveById(User.class, 1);
//		User u2 = (User)DaoGeneric.getInstance().retrieveById(User.class, 2);
//		
//		u2.setDonates(donatelist);
//		
//		DaoGeneric.getInstance().save(u2);
		
//		Animal a1 = new Animal("dasdasdasd", new Date(), 'm', "sadasdasd", "asdasdasdas", 12.0, new Date(), true, true);
//		Animal a2 = new Animal("dsd", new Date(), 'm', "sadasdasd", "asdasdasdas", 12.0, new Date(), true, true);
//		Animal a3 = new Animal("dasdasdasd", new Date(), 'm', "sadasdasd", "asdasdasdas", 12.0, new Date(), true, true);
//		Animal a4 = new Animal("xcxcz", new Date(), 'm', "sadasdasd", "asdasdasdas", 12.0, new Date(), true, true);
//		Animal a5 = new Animal("daqwwqwqwqd", new Date(), 'm', "sadasdasd", "asdasdasdas", 12.0, new Date(), true, true);
//		Animal a6 = new Animal("dazxxasd", new Date(), 'm', "sadasdasd", "asdasdasdas", 12.0, new Date(), true, true);
//		
//		DaoGeneric.getInstance().save(a1);
//		DaoGeneric.getInstance().save(a2);
//		DaoGeneric.getInstance().save(a3);
//		DaoGeneric.getInstance().save(a4);
//		DaoGeneric.getInstance().save(a5);
//		DaoGeneric.getInstance().save(a6);
		
//		
//		Donate d1 = new Donate(new Date(), 200.0);
//		Donate d2 = new Donate(new Date(), 100.0);
//		Donate d3 = new Donate(new Date(), 2200.0);
//		Donate d4 = new Donate(new Date(), 6200.0);
//		Donate d5 = new Donate(new Date(), 20.0);
//		List<Donate> dLista = new ArrayList();
//		dLista.add(d1);
//		dLista.add(d2);
//		dLista.add(d3);
//		dLista.add(d4);
//		dLista.add(d5);
		
//		Occupation o1 = (Occupation)DaoGeneric.getInstance().retrieveById(Occupation.class, 1);
//		Occupation o2 = (Occupation)DaoGeneric.getInstance().retrieveById(Occupation.class, 2);
//		Occupation o3 = (Occupation)DaoGeneric.getInstance().retrieveById(Occupation.class, 3);
//		
//		Employee e1 = new Employee("asdasdas", new Date(), 'm', "8798485465", null, null, null, null, null, o3);
//		DaoGeneric.getInstance().save(e1);
		
	}

}
