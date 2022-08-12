package model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity 
public class Employee extends Person{

	
	@ManyToOne
	private Occupation occupation;
	
	public Employee() {}
	

	public Employee(String name, Date birthDate, Character gender, String document, String email, Phone phone1,
			Phone phone2, Address address, User user, Occupation occupation) {
		super(name, birthDate, gender, document, email, phone1, phone2, address);
		this.occupation = occupation;
	}


	public Occupation getOccupation() {
		return occupation;
	}
	
	public void setOccupation(Occupation occupation) {
		this.occupation = occupation;
	}
	
	
}
