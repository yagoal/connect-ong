package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Telefone {

	@Id
	@GeneratedValue
	private Integer id;
	
	private String numero;
	private String ddd;
	private String codPais;
	
	public Telefone() {
		super();
	}

	public Telefone(String numero, String ddd, String codPais) {
		super();
		this.numero = numero;
		this.ddd = ddd;
		this.codPais = codPais;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getDdd() {
		return ddd;
	}

	public void setDdd(String ddd) {
		this.ddd = ddd;
	}

	public String getCodPais() {
		return codPais;
	}

	public void setCodPais(String codPais) {
		this.codPais = codPais;
	}
	
}