package com.musichub.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.model.Customer;
import com.musichub.model.Product;

@Repository
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired	
	private SessionFactory sessionFactory;
	//@Override
	@Transactional
	public void insert(Customer c)
	{   
		Session s=this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		c.setEnabled("true");
		s.save(c);
	
		t.commit();
		 

	}
		
	
		
	}
	


