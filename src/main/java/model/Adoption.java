package model;

import java.util.Date;

import model.Animal;
import model.Person;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//
//@Entity
public class Adoption { //Entidade -> Table

//	@Id
//	@GeneratedValue			//AutoInc -> 1,2,3,4...
	private Integer id;        //Primary Key
	
	private Date date;
	private Partner partner;
	private Animal animal;
	
	public Adoption() {
		super();
	}

	public Adoption(Date date, Partner partner, Animal animal) {
		super();
		this.date = date;
		this.partner = partner;
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

	public Partner getPartner() {
		return partner;
	}

	public void setPartner(Partner partner) {
		this.partner = partner;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	
}
