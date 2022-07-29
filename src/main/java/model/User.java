package model;

//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.Id;

//@Entity
public class User{

//	@Id
//	@GeneratedValue
	private Long id;
	
	private String login;
	private String senha;
	private Integer perfil;
	private Pessoa pessoa;
	
	public User() {
		super();
	}

	public User(String login, String senha, Integer perfil, Pessoa pessoa) {
		super();
		this.login = login;
		this.senha = senha;
		this.perfil = perfil;
		this.pessoa = pessoa;
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

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Integer getPerfil() {
		return perfil;
	}

	public void setPerfil(Integer perfil) {
		this.perfil = perfil;
	}

	public Pessoa getPessoa() {
		return pessoa;
	}

	public void setPessoa(Pessoa pessoa) {
		this.pessoa = pessoa;
	}
	
}