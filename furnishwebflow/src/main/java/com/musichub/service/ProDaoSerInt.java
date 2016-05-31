package com.musichub.service;

import java.util.List;


import com.musichub.model.Product;

public interface ProDaoSerInt {
	void insert(Product p1);
	List<Product> getProList();
	void remove(Integer pid);
	void update(Product p);
	
	
	

}
