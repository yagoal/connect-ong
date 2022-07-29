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
	
	private String nome;	//Campos... 
	private Date dataNasc;
	private Character sexo;
	private String documento;
	private List<Address> enderecos;
	private List<Phone> telefones;
	private User usuario;
	
	public Person() {
		super();
	}

	public Person(String nome, Date dataNasc, char sexo, String documento, List<Address> enderecos,
			List<Phone> telefones, User usuario) {
		super();
		this.nome = nome;
		this.dataNasc = dataNasc;
		this.sexo = sexo;
		this.documento = documento;
		this.enderecos = enderecos;
		this.telefones = telefones;
		this.usuario = usuario;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Date getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
	}

	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public String getDocumento() {
		return documento;
	}

	public void setDocumento(String documento) {
		this.documento = documento;
	}

	public List<Address> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Address> enderecos) {
		this.enderecos = enderecos;
	}

	public List<Phone> getTelefones() {
		return telefones;
	}

	public void setTelefones(List<Phone> telefones) {
		this.telefones = telefones;
	}

	public User getUsuario() {
		return usuario;
	}

	public void setUsuario(User usuario) {
		this.usuario = usuario;
	}

}