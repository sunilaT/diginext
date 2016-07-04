package com.musichub.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.model.Order;
@Repository
public class OrderDAOimpl implements OrderDAO{
	@Autowired	
	private SessionFactory sessionFactory;
	//@Override
	@Transactional
	public void insert(Order o)
	{   
		Session s=this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		//c.setEnabled(true);
		s.save(o);
	
		t.commit();
		 

	}


}
