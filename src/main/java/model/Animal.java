package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;

@Entity
public class Animal {			//Entidade -> Table

	@Id
	@GeneratedValue				//AutoInc -> 1,2,3,4...
	private Integer id;			//Primary Key
	
	private String name;		//Campos...
	private Date birthDate;
	private Character gender;
	private String specie;
	private String breed;
	private Double weight;
	private Date redempetionDate;
	private Boolean castration;
	private Boolean availability;	
	
	@ManyToOne
	private Ong ong;

	@OneToOne
	private Adoption adoption;
	public Animal() {
		super();
	}

	public Animal(
		String name, 
		Date birthDate, 
		Character gender, 
		String specie, 
		String breed, 
		Double weight, 
		Date redempetionDate,
		Boolean castration, 
		Boolean availability,
		Ong ong
	) {
		super();
		this.name = name;
		this.birthDate = birthDate;
		this.gender = gender;
		this.specie = specie;
		this.breed = breed;
		this.weight = weight;
		this.redempetionDate = redempetionDate;
		this.castration = castration;
		this.availability = availability;
		this.ong = ong;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Character getGender() {
		return gender;
	}

	public void setGender(Character gender) {
		this.gender = gender;
	}

	public String getSpecie() {
		return specie;
	}

	public void setSpecie(String specie) {
		this.specie = specie;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Date getRedempetionDate() {
		return redempetionDate;
	}

	public void setRedempetionDate(Date redempetionDate) {
		this.redempetionDate = redempetionDate;
	}

	public Boolean getCastration() {
		return castration;
	}

	public void setCastration(Boolean castration) {
		this.castration = castration;
	}

	public Boolean getAvailability() {
		return availability;
	}

	public void setAvailability(Boolean availability) {
		this.availability = availability;
	}

	public Ong getOng() {
		return ong;
	}

	public void setOng(Ong ong) {
		this.ong = ong;
	}
	
}