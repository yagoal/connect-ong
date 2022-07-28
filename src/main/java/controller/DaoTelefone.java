package controller;

import java.util.List;

import org.hibernate.Session;

import model.Telefone;

public class DaoTelefone {
	
	public void save(Telefone telefone) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Integer idTelefone = telefone.getId();
		
		try {
			session.beginTransaction();
			if(idTelefone == null) {
				session.save(telefone);
			} else {
				session.merge(telefone);
			}
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir no banco: "+e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public Telefone retrieveById(Integer id) {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		Telefone tel = null;
		try {
			tel = (Telefone)sessao.createQuery("FROM Telefone WHERE id = "+id).uniqueResult();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return tel;
	}
	
	public List<Telefone> retrieveAll() {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		List<Telefone> tels = null;
		try {
			sessao.beginTransaction();
			tels = sessao.createQuery("FROM Telefone").list();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return tels;
	}

}
