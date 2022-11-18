package model;

public class Id {
	public Integer idAnimal;
	public Integer idUser;

	public Id(Integer idAnimal, Integer idUser) {
		super();
		this.idAnimal = idAnimal;
		this.idUser = idUser;
	}
	
	public Id(Integer idAnimal) {
		this.idAnimal = idAnimal;
	}
}