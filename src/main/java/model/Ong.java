package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Ong { 	
	@Id
	@GeneratedValue
	private Integer id;
	
	private String name;
	private String cnpj;
	private Date foudingDate;
	@OneToOne
	private Address address;
	
	public Ong() {
		// TODO Auto-generated constructor stub
	}

	
	public Ong(String name, String cnpj, Date foudingDate, Address address) {
		super();
		this.name = name;
		this.cnpj = cnpj;
		this.foudingDate = foudingDate;
		this.address = address;
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

	public Address getAdress() {
		return address;
	}

	public void setAdress(Address adress) {
		this.address = adress;
	}	
	
}
