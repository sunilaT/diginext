package com.musichub.dao;
import java.util.*;

//import com.musichub.model.Prodform;
import com.musichub.model.Product;

public interface ProDaoInt {
	List<Product>getProList();
	void insert(Product pf);
	void remove(Integer pid);
	void update(Product p);

}

