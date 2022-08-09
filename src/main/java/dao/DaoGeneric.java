package dao;

import java.util.List;

import org.hibernate.Session;

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
		String 	className;
		Integer id;
		
		Session session = openSession();
		
		try {	
			classModel = pModel.getClass();
			className = classModel.getSimpleName();
			id = (Integer) classModel.getMethod("getId", null).invoke(pModel, null);
			
			session.beginTransaction();
			if(id == null) {
				session.save(pModel);
				System.out.println("pClass do tipo "+ className+"salva");
			}
			 else {				 
				session.merge(pModel);
			 }
			
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir no banco: "+e);
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
	

}
