package com.project.util;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class HibernateUtil {

	private static final SessionFactory sessionFactory =buildSessionFactory();
	

	private static SessionFactory buildSessionFactory() {
	
		try
		{
		return new Configuration().configure().buildSessionFactory();
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			throw new ExceptionInInitializerError();
		}
	}
	
	public static SessionFactory getSessionFactory()
	{
		return sessionFactory;
		
	}
}
