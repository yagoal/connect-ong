package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Donate {

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private Integer id;
	
	private String companyName;
	private String branch;
	private String account;
	private String codeQR;
	private String imgQRCode;
	
	@Column(unique = true)
	private String key;
	
	public Donate() {}
		
	public Donate(String companyName, String branch, String account, String codeQR, String imgQRCode, String key) {
		super();
		this.companyName = companyName;
		this.branch = branch;
		this.account = account;
		this.codeQR = codeQR;
		this.imgQRCode = imgQRCode;
		this.key = key;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getCodeQR() {
		return codeQR;
	}

	public void setCodeQR(String codeQR) {
		this.codeQR = codeQR;
	}

	public String getImgQRCode() {
		return imgQRCode;
	}

	public void setImgQRCode(String imgQRCode) {
		this.imgQRCode = imgQRCode;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

}
