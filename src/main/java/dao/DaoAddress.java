package dao;

import java.util.List;

import org.hibernate.Session;

import model.Address;

public class DaoAddress {

	public void save(Address address) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Integer id = address.getId();
		
		try {
			session.beginTransaction();
			if(id == null) {
				session.save(address);
			} else {
				session.merge(address);
			}
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir no banco: "+e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public Address retrieveById(Integer id) {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		Address address = null;
		try {
			address = (Address)sessao.createQuery("FROM Telefone WHERE id = "+id).uniqueResult();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return address;
	}
	
	public List<Address> retrieveAll() {
		Session sessao = HibernateUtil.getSessionFactory().openSession();
		List<Address> addresses = null;
		try {
			sessao.beginTransaction();
			addresses = sessao.createQuery("FROM Telefone").list();
		} catch(Exception e) {
			System.err.println(e);
		} finally {
			sessao.close();
		}
		return addresses;
	}

}
