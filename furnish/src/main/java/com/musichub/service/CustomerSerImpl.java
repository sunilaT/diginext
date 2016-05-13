package com.musichub.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musichub.dao.CustomerDao;
import com.musichub.model.Customer;

@Service("CustomerService")
public class CustomerSerImpl implements CustomerSerInt{

	@Autowired 
	CustomerDao c1;
	public void insert(Customer c) {
		// TODO Auto-generated method stub
		c1.insert(c);
	}

}
