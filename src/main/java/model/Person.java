package model;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;



@Entity @Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class Person {
	
	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private Integer id;
	
	private String name;
	private Date birthDate;
	private String gender;
	private String document;
	private String imgPath;
	
	@Column(unique = true)
	private String email;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Phone phone1;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Phone phone2;
	
	@OneToOne(cascade = CascadeType.ALL)
	private Address address;


	public Person() {
		super();
	}


	public Person(String name, Date birthDate, String gender, String document, String imgPath, String email,
			Phone phone1, Phone phone2, Address address) {
		super();
		this.name = name;
		this.birthDate = birthDate;
		this.gender = gender;
		this.document = document;
		this.imgPath = imgPath;
		this.email = email;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.address = address;
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


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getDocument() {
		return document;
	}


	public void setDocument(String document) {
		this.document = document;
	}


	public Phone getPhone1() {
		return phone1;
	}


	public void setPhone1(Phone phone1) {
		this.phone1 = phone1;
	}


	public Phone getPhone2() {
		return phone2;
	}


	public void setPhone2(Phone phone2) {
		this.phone2 = phone2;
	}


	public Address getAddress() {
		return address;
	}


	public void setAddress(Address address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getImgPath() {
		return imgPath;
	}


	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	

}