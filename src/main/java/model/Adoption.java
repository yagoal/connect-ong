package model;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Adoption {

	@Id
	@GeneratedValue			
	private Integer id;
	
	private Date date;

	@OneToOne
	private Animal animal;
	
	public Adoption() {
		super();
	}
	
	public Adoption(Date date, Animal animal) {
		super();
		this.date = date;
		this.animal = animal;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	
}
