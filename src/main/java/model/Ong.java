package model;

import java.util.Date;

//import javax.persistence.Entity;

//@Entity
public class Ong {  //Entidade -> Table
	
	//@Id
	//@GeneratedValue
	private Integer id;
	private String name;
	private String cnpj;
	private Date foudingDate;
	
	public Ong() {
		// TODO Auto-generated constructor stub
	}

	public Ong(String name, String cnpj, Date foudingDate) {
		super();
		this.name = name;
		this.cnpj = cnpj;
		this.foudingDate = foudingDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public Date getFoudingDate() {
		return foudingDate;
	}

	public void setFoudingDate(Date foudingDate) {
		this.foudingDate = foudingDate;
	}	
	
}
