package controller;

import java.util.List;

import org.hibernate.Session;

import model.Animal;

public class DaoAnimal {
	
	public void save(Animal animal) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Integer id = animal.getId();
		
		try {
			session.beginTransaction();
			if(id == null) {
				session.save(animal);
			} else {
				session.merge(animal);
			}
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir no banco: "+e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public Animal retrieveById(Integer id) {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		Animal animal = null;
		try {
			animal = (Animal)sessao.createQuery("FROM Telefone WHERE id = "+id).uniqueResult();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return animal;
	}
	
	public List<Animal> retrieveAll() {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		List<Animal> animais = null;
		try {
			sessao.beginTransaction();
			animais = sessao.createQuery("FROM Telefone").list();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return animais;
	}

}
