package com.musichub.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.musichub.dao.ProDaoInt;
import com.musichub.model.Product;

@Service("ProductService")
public class ProDaoSerCla implements ProDaoSerInt{
	@Autowired
	ProDaoInt pdInt;
	
	public void insert(Product p1) {
		pdInt.insert(p1);
		
	}

	//@SuppressWarnings("unchecked")
	public List<Product> getProList() {
		
		// TODO Auto-generated method stub
		System.out.println("In SERVICE");
		List<Product> a=pdInt.getProList();
		System.out.println(a);
		return a;
	}
	public void remove(Integer pid)
	{
	   pdInt.remove(pid);	
	}
	public void update(Product p){
		pdInt.update(p);
	}

}
