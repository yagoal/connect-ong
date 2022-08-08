package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Donate {

	@Id
	@GeneratedValue
	private Integer id;
	private Date DonateDate;
	private Double value;
	
	@ManyToOne
	private Partner partner;
	
	
	
	public Donate(Date donateDate, Double value, Partner partner) {
		super();
		DonateDate = donateDate;
		this.value = value;
		this.partner = partner;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Date getDonateDate() {
		return DonateDate;
	}
	
	public void setDonateDate(Date donateDate) {
		DonateDate = donateDate;
	}
	
	public Double getValue() {
		return value;
	}
	
	public void setValue(Double value) {
		this.value = value;
	}
	
	public Partner getPartner() {
		return partner;
	}
	
	public void setPartner(Partner partner) {
		this.partner = partner;
	}

}
