package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import dao.DaoGeneric;

public class teste {

	public static void main(String[] args) {
		
		String login = "valdemilson.lins@gmail.com";
		String password = "jumento";
		
		String cpf = "000.000.000-00";
		
		String newCpf = cpf.replace(". -", "");
		
		System.out.println(newCpf);
		
		
		
	}

}
