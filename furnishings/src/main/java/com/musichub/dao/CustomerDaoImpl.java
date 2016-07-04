package com.musichub.dao;

import java.util.ArrayList;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.musichub.model.Customer;
//import com.musichub.model.Customer;

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
		c.setEnabled(true);
		s.save(c);
	
		t.commit();
		 

	}
	
	public List<Customer> viewcustomers()
	{
		System.out.println("-----------  "+sessionFactory);
		Session s=sessionFactory.openSession();
		Transaction t = s.beginTransaction();

		System.out.println("In dao ");
		List<Customer> al=new ArrayList<Customer>();
				 al=s.createQuery("from Customer").list();
		 t.commit();
		 
		// t.begin();
		/*Customer p=new Customer(11,123,"Guitar",123.23);
		Customer p1=new Customer(12,123,"Tabla",123.23);
		Customer p2=new Customer(13,123,"violin",123.23);
		Customer p3=new Customer(14,123,"trumpet",123.23);
		Customer p4=new Customer(15,123,"flute",123.23);
		//p.setNum(num);
		//p.setPcost(pcost);
		//p.setPid(pid);
		//p.setPname(pname);
		al.add(p4);
		al.add(p3);
		al.add(p2);
		al.add(p1);
		al.add(p);*/
		return al;

	}
	public void edit(Customer p){
		System.out.println("In update Customer");
		Session s=sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		Customer p1=(Customer)s.load(Customer.class,p.getUserid());
		if(p1!=null)
		{
			System.out.println("****inif");
			s.update(p);
		}
		t.commit();
		


		}
		@Transactional
		public void delete(Integer pid)
		{
		
			Session s=sessionFactory.openSession();
			Transaction t=s.beginTransaction();
			Customer p=(Customer)s.load(Customer.class,new Integer(pid));
			if(p!=null)
			{
				s.delete(p);
			}
			t.commit();
		}

		
	
		
	}
	


