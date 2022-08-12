package model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

public class Partner extends Person {

	@OneToMany(cascade = CascadeType.ALL)
	private List<Donate> donates;
	
	@OneToMany(cascade = CascadeType.ALL)
	private List<Adoption> adoptions;
	
	public Partner() {
		// TODO Auto-generated constructor stub
	}

	public Partner(String name, Date birthDate, Character gender, String document, String email, Phone phone1,
			Phone phone2, Address address, List<Donate> donates, List<Adoption> adoptions) {
		super(name, birthDate, gender, document, email, phone1, phone2, address);
		this.donates = donates;
		this.adoptions = adoptions;
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
	
	

}
