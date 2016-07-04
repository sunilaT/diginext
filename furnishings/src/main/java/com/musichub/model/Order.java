package com.musichub.model;

import javax.persistence.*;

@Entity
@Table(name="Order2")
public class Order {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int oid;
	@Column
	private String pname;
	@Column
	private double price;
	@Column
	private int pid;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}

}
