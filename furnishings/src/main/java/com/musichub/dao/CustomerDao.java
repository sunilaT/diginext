package com.musichub.dao;
import java.util.List;

import com.musichub.model.Customer;

public interface CustomerDao {
	void insert(Customer c);
	List<Customer> viewcustomers();
	void edit(Customer c);
	void delete(Integer userid);
	

}
