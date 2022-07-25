package model;

import java.util.Date;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;

//@Entity
public class Animal {			//Entidade -> Table

//	@Id
//	@GeneratedValue				//AutoInc -> 1,2,3,4...
	private Long id;			//Primary Key
	
	private String nome;		//Campos...
	private Date dataNasc;
	private char sexo;
	private String especie;
	private String raca;
	private Double peso;
	private Date dataResgate;
	private Boolean castracao;
	private Boolean disponibilidade;	
	
//	@ManyToOne
	private Ong ong;

	public Animal() {
		super();
	}

	public Animal(
		String nome, 
		Date dataNasc, 
		char sexo, 
		String especie, 
		String raca, 
		Double peso, 
		Date dataResgate,
		Boolean castracao, 
		Boolean disponibilidade,
		Ong ong
	) {
		super();
		this.nome = nome;
		this.dataNasc = dataNasc;
		this.sexo = sexo;
		this.especie = especie;
		this.raca = raca;
		this.peso = peso;
		this.dataResgate = dataResgate;
		this.castracao = castracao;
		this.disponibilidade = disponibilidade;
		this.ong = ong;
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

	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public String getRaca() {
		return raca;
	}

	public void setRaca(String raca) {
		this.raca = raca;
	}

	public Double getPeso() {
		return peso;
	}

	public void setPeso(Double peso) {
		this.peso = peso;
	}

	public Date getDataResgate() {
		return dataResgate;
	}

	public void setDataResgate(Date dataResgate) {
		this.dataResgate = dataResgate;
	}

	public Boolean isCastracao() {
		return castracao;
	}

	public void setCastracao(Boolean castracao) {
		this.castracao = castracao;
	}

	public Boolean isDisponibilidade() {
		return disponibilidade;
	}

	public void setDisponibilidade(Boolean disponibilidade) {
		this.disponibilidade = disponibilidade;
	}

	public Ong getOng() {
		return ong;
	}

	public void setOng(Ong ong) {
		this.ong = ong;
	}
	
	
}