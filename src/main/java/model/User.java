package model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public class User extends Person {

	private String password;
	private String docType;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Donate> donates;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Adoption> adoptions;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Animal> animals;
	
	public User() { }

	public User(String name, Date birthDate, String gender, String document, String imgPath, String email, Phone phone1,
			Phone phone2, Address address, String password, String docType, List<Donate> donates,
			List<Adoption> adoptions, List<Animal> animals) {
		super(name, birthDate, gender, document, imgPath, email, phone1, phone2, address);
		this.password = password;
		this.docType = docType;
		this.donates = donates;
		this.adoptions = adoptions;
		this.animals = animals;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDocType() {
		return docType;
	}

	public void setDocType() {
		if(getDocument().length() == 14) {
			this.docType = "cpf";
		} else {
			this.docType = "cnpj";
		}
	}

	public List<Donate> getDonates() {
		return donates;
	}

	public void setDonates(List<Donate> donates) {
		this.donates = donates;
	}

	public List<Adoption> getAdoptions() {
		return adoptions;
	}

	public void setAdoptions(List<Adoption> adoptions) {
		this.adoptions = adoptions;
	}

	public List<Animal> getAnimals() {
		return animals;
	}

	public void setAnimals(List<Animal> animals) {
		this.animals = animals;
	}

	public String verifyDocType(String doc) {
		if(doc.length() == 14) {
			return "cpf";
		} else {
			return "cnpj";
		}
	}
	
}