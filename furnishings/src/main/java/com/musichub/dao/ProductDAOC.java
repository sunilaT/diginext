package com.musichub.dao;
import com.musichub.model.Product;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

//import java.util.ArrayList;
//import java.util.List;

//import com.musichub.model.Prodform;
//import com.musichub.model.Product;
@Repository("productD")
public class ProductDAOC implements ProDaoInt{
	
	@Autowired	
	private SessionFactory sessionFactory;
	//@Override
	@Transactional(propagation=Propagation.SUPPORTS)
	public void insert(Product pf)
	{   
		Session s=this.sessionFactory.openSession();
		Transaction t = s.beginTransaction();
		s.save(pf);
		t.commit();
		s.flush();
	}
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Product> getProList()// method of ProductDAOInt defined
	{
		System.out.println("-----------  "+sessionFactory);
		Session s=sessionFactory.openSession();
		Transaction t = s.beginTransaction();

		System.out.println("In dao ");
		List<Product> al=new ArrayList<Product>();
				 al=s.createQuery("from Product").list();
		 t.commit();
		 
		// t.begin();
		/*Product p=new Product(11,123,"Guitar",123.23);
		Product p1=new Product(12,123,"Tabla",123.23);
		Product p2=new Product(13,123,"violin",123.23);
		Product p3=new Product(14,123,"trumpet",123.23);
		Product p4=new Product(15,123,"flute",123.23);
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
	public void update(Product p){
	System.out.println("In update product");
	Session s=sessionFactory.openSession();
	Transaction t = s.beginTransaction();
	Product p1=(Product)s.load(Product.class,p.getPid());
	if(p1!=null)
	{
		System.out.println("****inif");
		s.update(p);
	}
	t.commit();
	


	}
	@Transactional
	public void remove(Integer pid)
	{
	
		Session s=sessionFactory.openSession();
		Transaction t=s.beginTransaction();
		Product p=(Product)s.load(Product.class,new Integer(pid));
		if(p!=null)
		{
			s.delete(p);
		}
		t.commit();
	}
	
	}
