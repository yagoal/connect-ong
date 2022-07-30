package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Phone {

	@Id
	@GeneratedValue
	private Integer id;
	
	private String number;
	private String ddd;
	private String countryCode;
	
	public Phone() {
		super();
	}

	public Phone(String number, String ddd, String countryCode) {
		super();
		this.number = number;
		this.ddd = ddd;
		this.countryCode = countryCode;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDdd() {
		return ddd;
	}

	public void setDdd(String ddd) {
		this.ddd = ddd;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	
}