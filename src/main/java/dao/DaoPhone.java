package dao;

import java.util.List;

import org.hibernate.Session;

import model.Phone;

public class DaoPhone {
	
	public void save(Phone Phone) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Integer idPhone = Phone.getId();
		
		try {
			session.beginTransaction();
			if(idPhone == null) {
				session.save(Phone);
			} else {
				session.merge(Phone);
			}
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir no banco: " +e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public Phone retrieveById(Integer id) {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		Phone tel = null;
		try {
			tel = (Phone)sessao.createQuery("FROM Phone WHERE id = "+id).uniqueResult();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return tel;
	}
	
	public List<Phone> retrieveAll() {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		List<Phone> tels = null;
		try {
			sessao.beginTransaction();
			tels = sessao.createQuery("FROM Phone").list();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return tels;
	}

}
