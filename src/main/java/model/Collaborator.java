package model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
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

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	
		
}