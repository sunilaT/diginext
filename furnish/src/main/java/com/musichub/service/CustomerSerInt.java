package com.musichub.service;
import java.util.*;
import com.musichub.model.Customer;

public interface CustomerSerInt {
	void insert(Customer c);
	List<Customer>viewcustomers();
	void edit(Customer c);
	void delete(Integer userid);
	

}