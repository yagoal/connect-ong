package model;

import java.nio.file.Path;
import java.util.Date;
import java.util.List;

import model.Adoption;

//import javax.persistence.Entity;

//@Entity
public class Partner extends Person { //Entidade -> Table
	
	private Path photo;	
	private List<Adoption> adoptions;
	
	public Partner() {
		super();
	}

	public Partner(String nome, Date dataNasc, Character sexo, String document, List<Address> enderecos,
			List<Phone> telefones, User usuario, Path foto, List<Adoption> adoptions) {
		super(nome, dataNasc, sexo, document, enderecos, telefones, usuario);
		this.photo = foto;
		this.adoptions = adoptions;
	}

	public Path getFoto() {
		return photo;
	}

	public void setPhoto(Path photo) {
		this.photo = photo;
	}

	public List<Adoption> getAptions() {
		return adoptions;
	}

	public void setAdocoes(List<Adoption> adoptions) {
		this.adoptions = adoptions;
	}
	
}
