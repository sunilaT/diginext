package com.musichub.dao;

import java.util.ArrayList;
import java.util.List;

import com.musichub.model.Product;

public class ProductDAOC implements ProductDAOInt{

	public ArrayList getProList()
	{
		ArrayList<Product> al=new ArrayList<Product>();
		Product p=new Product(11,123,"Guitar",123.23);
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
		al.add(p);
		return al;
	}
}
