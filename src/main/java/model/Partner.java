package model;

import java.nio.file.Path;
import java.util.Date;
import java.util.List;

import model.Adoption;

//import javax.persistence.Entity;

//@Entity
public class Partner extends Person { //Entidade -> Table
	
	private Path foto;	
	private List<Adoption> adocoes;
	
	public Partner() {
		super();
	}

	public Partner(String nome, Date dataNasc, Character sexo, String cpfCnpj, List<Address> enderecos,
			List<Phone> telefones, User usuario, Path foto, List<Adoption> adocoes) {
		super(nome, dataNasc, sexo, cpfCnpj, enderecos, telefones, usuario);
		this.foto = foto;
		this.adocoes = adocoes;
	}

	public Path getFoto() {
		return foto;
	}

	public void setFoto(Path foto) {
		this.foto = foto;
	}

	public List<Adoption> getAdocoes() {
		return adocoes;
	}

	public void setAdocoes(List<Adoption> adocoes) {
		this.adocoes = adocoes;
	}
	
}
