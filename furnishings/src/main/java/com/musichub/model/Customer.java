package com.musichub.model;
import javax.persistence.*;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;
 
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
 
//import com.journaldev.spring.form.validator.Phone;
 
@Entity
@Table(name="customer5")// a table with name customer2 is created
public class Customer {
	@Column(name="phno")// column name phno
	
	private long phno;
	@Column
	@NotEmpty @Size(min=2,max=20)
	private String name;

	@Column
	@Size(min=6,max=20)
	private String pwd;
	@Column
	@NotEmpty @Email(message="Enter valid mailid")
	private String emailid;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column
	private int userid;
	@Column
	private boolean enabled;
	public long getPhno() {
		return phno;
	}
	public String getName() {
		return name;
	}
	public String getPwd() {
		return pwd;
	}
	public String getEmailid() {
		return emailid;
	}
	public int getUserid() {
		return userid;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public boolean isEnabled() {
		return enabled;
	}
	

}
