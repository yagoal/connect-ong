package model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;

@Entity
public class Collaborator extends Person {

	private String occupation;
	private Double salary;
	
	
	public Collaborator() {
		super();
	}
	
	public Collaborator(String name, Date birthDate, Character gender, String document, List<Address> adresses,
			List<Phone> phones, User user, String occupation, Double salary) {
		super(name, birthDate, gender, document, adresses, phones, user);
		
		this.occupation = occupation;
		this.salary = salary;
	}
	
	
		
}