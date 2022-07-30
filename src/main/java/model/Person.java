package model;

import java.util.Date;
import java.util.List;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//
//@Entity
public abstract class Person { //Entidade -> Table

//	@Id
//	@GeneratedValue			//AutoInc -> 1,2,3,4...
	private Integer id;		//Primary Key
	
	private String name;	//Campos... 
	private Date birthDate;
	private Character gender;
	private String document;
	private List<Address> adresses;
	private List<Phone> phones;
	private User user;
	
	public Person() {
		super();
	}

	public Person(String name, Date birthDate, Character gender, String document, List<Address> adresses,
			List<Phone> phones, User user) {
		super();
		this.name = name;
		this.birthDate = birthDate;
		this.gender = gender;
		this.document = document;
		this.adresses = adresses;
		this.phones = phones;
		this.user = user;
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

	public String getDocument() {
		return document;
	}

	public void setDocument(String document) {
		this.document = document;
	}

	public List<Address> getAdresses() {
		return adresses;
	}

	public void setAdresses(List<Address> adresses) {
		this.adresses = adresses;
	}

	public List<Phone> getPhones() {
		return phones;
	}

	public void setPhones(List<Phone> phones) {
		this.phones = phones;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}