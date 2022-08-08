package model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;

@Entity
public class Partner extends Person { 
	
	private String photo;
	
	@OneToMany
	private List<Adoption> adoptions;
	@OneToMany
	private List<Donate> donates;
	
	public Partner() {
		super();
	}

	
	public Partner(String name, Date birthDate, Character gender, String document, List<Address> adresses,
			List<Phone> phones, User user, String photo, List<Adoption> adoptions, List<Donate> donates) {
		super(name, birthDate, gender, document, adresses, phones, user);
		this.photo = photo;
		this.adoptions = adoptions;
		this.donates = donates;
	}


	public String getPhoto() {
		return photo;
	}
	


	public void setPhoto(String photo) {
		this.photo = photo;
	}


	
	public List<Adoption> getAdoptions() {
		return adoptions;
	}


	
	public void setAdoptions(List<Adoption> adoptions) {
		this.adoptions = adoptions;
	}


	
	public List<Donate> getPartners() {
		return donates;
	}


	
	public void setPartners(List<Donate> donates) {
		this.donates = donates;
	}

	
	
}
