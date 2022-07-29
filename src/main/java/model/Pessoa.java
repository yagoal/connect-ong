package model;

import java.util.Date;
import java.util.List;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;
//
//@Entity
public abstract class Pessoa { //Entidade -> Table

//	@Id
//	@GeneratedValue			//AutoInc -> 1,2,3,4...
	private Long id;		//Primary Key
	
	private String nome;	//Campos... 
	private Date dataNasc;
	private char sexo;
	private String documento;
	private List<Endereco> enderecos;
	private List<Telefone> telefones;
	private Usuario usuario;
	
	public Pessoa() {
		super();
	}

	public Pessoa(String nome, Date dataNasc, char sexo, String documento, List<Endereco> enderecos,
			List<Telefone> telefones, Usuario usuario) {
		super();
		this.nome = nome;
		this.dataNasc = dataNasc;
		this.sexo = sexo;
		this.documento = documento;
		this.enderecos = enderecos;
		this.telefones = telefones;
		this.usuario = usuario;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
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

	public List<Endereco> getEnderecos() {
		return enderecos;
	}

	public void setEnderecos(List<Endereco> enderecos) {
		this.enderecos = enderecos;
	}

	public List<Telefone> getTelefones() {
		return telefones;
	}

	public void setTelefones(List<Telefone> telefones) {
		this.telefones = telefones;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}