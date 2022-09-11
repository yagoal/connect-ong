package dao;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import model.User;

public class DaoGeneric {
	
	public static DaoGeneric aDaoGeneric = new DaoGeneric();
	
	private Session openSession() {
		return HibernateUtil.getSessionFactory().openSession();
	}
	
	private DaoGeneric(){}
	
	public static DaoGeneric getInstance() {
		if(DaoGeneric.aDaoGeneric == null) {
			DaoGeneric.aDaoGeneric = new DaoGeneric();
		}
	
		return DaoGeneric.aDaoGeneric;
	}
	
	public void save(Object pModel)  {
	
		Class<?> classModel;
		String 	className = null;
		Integer id;
		
		Session session = openSession();
		
		try {	
			classModel = pModel.getClass();
			className = classModel.getSimpleName();
			id = (Integer) classModel.getMethod("getId", null).invoke(pModel, null);
			
			session.beginTransaction();
			if(id == null) {
				session.save(pModel);
				System.out.println("Classe do tipo "+ className+" salva");
			}
			 else {				 
				session.merge(pModel);
			 }
			
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir "+className+" no banco: "+e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public void delete(Object pModel) {
		
		Session session = openSession();
		
		try {
			System.out.println(pModel);
			session.beginTransaction();
			session.delete(pModel);
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao deletar no banco: "+e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	
	
	public Object retrieveById(Class<?> pClass, Integer id) {
		String className;
		Object model = null;
		Session session = openSession();
		
		try {
			session.beginTransaction();
			className = pClass.getTypeName();
			model = session.createQuery("FROM "+className+" WHERE id = "+id).uniqueResult();
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			session.close();
		}
		
		return model;
	}
	public List<?> retrieveAll (Class<?> pModel) {
		List<?> classModels = null;
		String className = pModel.getTypeName();
		Session session = openSession();
		
		try {
			session.beginTransaction();
			classModels = session.createQuery("FROM  "+className).list();
			System.out.println(classModels);
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			session.close();
		}

			return classModels;
		}
	
	
//	-------------------------------Regras de negocios--------------------
	
	public User hasUser(String pLogin, String pPassword) {
		User user;
		Session session = openSession();
		try {
			session.beginTransaction();
			user = (User) session.createQuery("FROM User WHERE email='"+pLogin+"' AND password='"+pPassword+"'").uniqueResult();
			System.out.println(user);
			if(user != null) {
				return user;
			} 
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			session.close();
		}
		return null;
	}

	public User retrieveByEmail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		User user = null;
		Session session = openSession();
		
		try {
			session.beginTransaction();
			user = (User) session.createQuery("FROM User WHERE login='"+email+"'").uniqueResult();
			if(user != null) {
				return user;				
			}
		} catch (Exception e) {
			System.err.println(e);
		} finally {
			session.close();
		}
		response.setStatus(500);
		return null;
	}
	
}
