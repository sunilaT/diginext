package com.musichub.model;
import javax.persistence.*;
@Entity
@Table(name="Product3")// a table with name Product1 is created
public class Product {
	
	public void setPid(int pid) {
		this.pid = pid;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public void setPcost(double pcost) {
		this.pcost = pcost;
	}
	
	public int getPid() {
		return pid;
	}
	public String getPname() {
		return pname;
	}
	public double getPcost() {
		return pcost;
	}
	 // makes pid as primary key with IDENTITY strategy
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="pid")
	private int pid;
	@Column(name="pName")
	private String pname;
	@Column(name="pCost")
	private double pcost;
	public Product()
	{
		
	}
//	 parameterised constructor
	public Product(int pid, String pname, double pcost) {
		super();
		//this.num = num;
		this.pid = pid;
		this.pname = pname;
		this.pcost = pcost;
	}
	

}
