package model;

import java.util.Date;
import java.util.List;

//import javax.persistence.Entity;

//@Entity
public class Partner extends Pessoa {  //Entidade -> Table
	
	private Foto foto;	
	private List<Adocao> adocoes;
	
	public Partner() {
		super();
	}

	public Partner(String nome, Date dataNasc, char sexo, String cpfCnpj, List<Endereco> enderecos,
			List<Telefone> telefones, Usuario usuario, Foto foto, List<Adocao> adocoes) {
		super(nome, dataNasc, sexo, cpfCnpj, enderecos, telefones, usuario);
		this.foto = foto;
		this.adocoes = adocoes;
	}

	public Foto getFoto() {
		return foto;
	}

	public void setFoto(Foto foto) {
		this.foto = foto;
	}

	public List<Adocao> getAdocoes() {
		return adocoes;
	}

	public void setAdocoes(List<Adocao> adocoes) {
		this.adocoes = adocoes;
	}
	
}
