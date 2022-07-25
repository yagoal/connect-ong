package model;

import java.util.Date;

//@Entity
public class Ong {
	
	//@Id
	//@GeneratedValue
	private long id;
	private String nome;
	private String cnpj;
	private Date dataFundacao;
	
	public Ong() {
		// TODO Auto-generated constructor stub
	}

	public Ong(String nome, String cnpj, Date dataFundacao) {
		super();
		this.nome = nome;
		this.cnpj = cnpj;
		this.dataFundacao = dataFundacao;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public Date getDataFundacao() {
		return dataFundacao;
	}

	public void setDataFundacao(Date dataFundacao) {
		this.dataFundacao = dataFundacao;
	}
	
	
	

}
