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
	
	private Date data;
	private Partner parceiro;
	private Animal animal;
	
	public Adoption() {
		super();
	}

	public Adoption(Date data, Partner parceiro, Animal animal) {
		super();
		this.data = data;
		this.parceiro = parceiro;
		this.animal = animal;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Partner getParceiro() {
		return parceiro;
	}

	public void setParceiro(Partner parceiro) {
		this.parceiro = parceiro;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}
	
}
