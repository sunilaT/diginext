package com.musichub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musichub.dao.CustomerDao;
import com.musichub.model.Customer;
import com.musichub.model.Product;

@Service("CustomerService")
public class CustomerSerImpl implements CustomerSerInt{

	@Autowired 
	CustomerDao c1;
	public void insert(Customer c) {
		// TODO Auto-generated method stub
		c1.insert(c);
	}
	public List<Customer> viewcustomers()
	{
		List<Customer> l1=c1.viewcustomers();
		return l1;
	}
	public void delete(Integer pid)
	{
	   c1.delete(pid);	
	}
	public void edit(Customer p){
		c1.edit(p);
	}

}
