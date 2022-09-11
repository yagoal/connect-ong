package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
public class Animal {			

	@Id
	@GeneratedValue				
	private Integer id;			
	
	private String name;
	private String imgPath;
	private String birthYearDate;
	private Character gender;
	private String specie;
	private String breed;
	private Double weight;
	private Date redempetionDate;
	private Boolean castration;
	private Boolean availability;	
	
	
	public Animal() {
		super();
	}

	public Animal(
		String name, 
		String imgPath,
		String birthYearDate, 
		Character gender, 
		String specie, 
		String breed, 
		Double weight, 
		Date redempetionDate,
		Boolean castration, 
		Boolean availability
	) {
		super();
		this.name = name;
		this.imgPath = imgPath;
		this.birthYearDate = birthYearDate;
		this.gender = gender;
		this.specie = specie;
		this.breed = breed;
		this.weight = weight;
		this.redempetionDate = redempetionDate;
		this.castration = castration;
		this.availability = availability;
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

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getBirthYearDate() {
		return birthYearDate;
	}

	public void setBirthYearDate(String birthYearDate) {
		this.birthYearDate = birthYearDate;
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

	
}