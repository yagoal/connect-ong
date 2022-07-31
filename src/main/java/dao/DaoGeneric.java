package dao;

import org.hibernate.Session;

public class DaoGeneric {
	
	public static DaoGeneric aDaoGeneric = new DaoGeneric();
	
	private Session openSession() {
		return HibernateUtil.getSessionFactory().openSession();
	}
	
	private DaoGeneric(){}
	
	public static DaoGeneric getInstance() {
		if(DaoGeneric.aDaoGeneric == null)
			DaoGeneric.aDaoGeneric = new DaoGeneric();
	
		return DaoGeneric.aDaoGeneric;
	}
	
	public void save(Object pModel) {
		Class<?> classModel;
		Integer id;
		
		Session session = openSession();
		
	
		try {
			classModel = pModel.getClass();
			id = (Integer) classModel.getMethod("getId", null).invoke(pModel, null);

			
			session.beginTransaction();
			if(id == null) 
				session.save(pModel);
			 else 
				session.merge(pModel);
			
			session.getTransaction().commit();
		} catch (Exception e) {
			System.err.println("Erro ao inserir no banco: "+e);
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
	}
	
	public void delete(Object pModel) {
		Class<?> classModel;
		Integer id;
	}
	

}
