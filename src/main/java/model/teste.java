package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Year;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dao.DaoGeneric;

public class Teste {

	public static void main(String[] args) {
		
		List<Animal> animals = new ArrayList();
		
		animals.add(generated("Lilica", "2020", "Macho", "Felino", "SRD", 0.9, "03/01/2022", false, true));
		animals.add(generated("Pipoca", "2021", "Macho", "Canino", "SRD", 10.0, "04/09/2022", true, true));
		animals.add(generated("Mili", "2021", "Fêmea", "Felino", "SRD", 0.85, "01/10/2022", false, true));
		animals.add(generated("Nina", "2020", "Fêmea", "Canino", "SRD", 5.2, "02/01/2022", false, true));
		animals.add(generated("Churros", "2019", "Macho", "Felino", "SRD", 1.2, "03/07/2022", true, true));
		animals.add(generated("Popeye", "2019", "Macho", "Canino", "SRD", 4.7, "28/05/2022", false, true));
		animals.add(generated("Bingo", "2020", "Macho", "Canino", "SRD", 8.9, "30/01/2022", true, true));
		animals.add(generated("Snoop", "2022", "Macho", "Canino", "SRD", 7.5, "28/02/2022", false, true));
		animals.add(generated("Belinha", "2019", "Fêmea", "Felino", "SRD", 0.7, "14/02/2022", false, true));
		animals.add(generated("Rex", "2020", "Macho", "Canino", "SRD", 11.50, "23/07/2022", false, true));
		animals.add(generated("Paçoca", "2018", "Fêmea", "Canino", "SRD", 12.5, "30/04/2022", true, true));
		
		for(Animal a: animals) {
			a.setGender("Macho");
			DaoGeneric.getInstance().save(a);
		}
	}
	
	public static Animal generated(
			String name,
			String birthDate, 
			String gender, 
			String specie, 
			String breed, 
			Double weight, 
			String redempetionDate,
			Boolean castration, 
			Boolean availability 
	) {
		SimpleDateFormat dateFormated = new SimpleDateFormat("dd/MM/yyyy"); 
		SimpleDateFormat dateFormatedYear = new SimpleDateFormat("yyyy"); 
		
		Date birth;
		Date redempetion;
		try {
			birth = dateFormatedYear.parse(birthDate);
			redempetion = dateFormated.parse(redempetionDate);
		} catch (ParseException e) {
			birth = null;
			redempetion = null;
			e.printStackTrace();
			
		}
		
		return new Animal(name, "", birth, gender, specie, breed, weight, redempetion, castration, availability);
	}

}
