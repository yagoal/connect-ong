package model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class User{

	@Id
	@GeneratedValue
	private Long id;
	
	private String login;
	private String password;
	private Integer profile;
	@OneToOne
	private Person person;
	
	public User() {
		super();
	}

	public User(String login, String password, Integer profile, Person person) {
		super();
		this.login = login;
		this.password = password;
		this.profile = profile;
		this.person = person;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getProfile() {
		return profile;
	}

	public void setProfile(Integer profile) {
		this.profile = profile;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
	
	
}