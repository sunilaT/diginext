package com.musichub.controller;
import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.List;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//import javax.validation.Valid;
import javax.validation.Valid;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.*;
import com.musichub.dao.OrderDAO;
import com.musichub.model.*;
import org.springframework.web.servlet.ModelAndView;

import com.musichub.service.CustomerSerInt;
import com.musichub.service.ProDaoSerInt;  

@Controller
public class FurnishController
{
	@Autowired
	SessionFactory sf;
	
	@Autowired
	ProDaoSerInt p1;
	
	@Autowired
	CustomerSerInt c1;
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping("/")  
	 public ModelAndView Home() 
	 {
		return new ModelAndView("index");  
	 }
	@RequestMapping("/index")  
	 public ModelAndView index() 
	 {
		return new ModelAndView("index");  
	 }

	@RequestMapping("/product2")  
	 public ModelAndView product2() 
	 {
		List<Product> arr=p1.getProList();
		Gson gson=new Gson();
		String json=gson.toJson(arr);
		return new ModelAndView("productcustomer","data",gson.toJson(arr));
	
		//Gson gson=new Gson();
		//return new ModelAndView("productcustomer","data",gson.toJson(arr));  
	 }
	
	@RequestMapping("/prod")  
	 public ModelAndView prod() 
	 {
		System.out.println("test--------------->");
		return new ModelAndView("prod","command",new Product());
	
	 }
	@ModelAttribute("cmd")
	public Customer getvalid()
	{
		
		return new Customer();
	}
	
	@RequestMapping("/reg")  
	 public String regcust(@ModelAttribute("cmd")@Valid Customer c, BindingResult res) 
	 {
		try{
		c1.insert(c);
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		System.out.println("customer--------------->");
		//ModelAndView m=new ModelAndView("signup");
		if(res.hasErrors()){
			//m.addObject("command",new Customer());
			//return m;
			return "signup";
		}else{
			return "index";
		}
	 }
	@RequestMapping("/addprod")
    ModelAndView storeproduct(HttpServletRequest request,@RequestParam("file") MultipartFile file,@ModelAttribute("command")@Valid Product p,BindingResult result)
    {
    	if(result.hasErrors()){
			 List<ObjectError> errors=result.getAllErrors();
			 return new ModelAndView("prod", "command", p).addObject("messages", errors);
		 }
    	//System.out.println(p.getManufacture());
    	String fileName = null,error="";
	    	if (!file.isEmpty()) {
	            try {
	                fileName = file.getOriginalFilename();
	                byte[] bytes = file.getBytes();
	                BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("C:/Users/SANKAR/Desktop/dhanya/furnishings/src/main/webapp/resources/images/" + fileName)));
	                buffStream.write(bytes);
	                buffStream.close();
	                error= "You have successfully uploaded " + fileName;
	            } catch (Exception e) {
	            	error="You failed to upload " + fileName + ": " + e.getMessage();
	            }
	        } else {
	        	error="Unable to upload. File is empty.";
	        }
	    	p1.insert(p); 
	    	File oldName = new File("C:/Users/SANKAR/Desktop/dhanya/furnishings/src/main/webapp/resources/images/" + fileName);
	        File newName = new File("C:/Users/SANKAR/Desktop/dhanya/furnishings/src/main/webapp/resources/images/"+ p.getPid()+fileName.substring(fileName.indexOf(".")));
	        if(oldName.renameTo(newName)) {
	           System.out.println(p.getPid());
	           error=p.getPname()+" added Successfully !";
	        } 
	    	return new ModelAndView("prod", "msg", error);//.addObject("products", getProList(""));
	    }
    
	
	/*@RequestMapping("/addprod")  
	 public String addprod(@ModelAttribute("command")@Valid Product pf,BindingResult res) 
	 {
		try{
			p1.insert(pf);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			System.out.println("Product--------------->");
			if(res.hasErrors()){
				return "prod";
			}else{
				return "manageproduct";
			}
		}*/
	@RequestMapping("/login")
	 public ModelAndView Login() 
	 {
		return new ModelAndView("userlogin","command",new Customer());  
	 }
	@RequestMapping("/mylogin")
	 public ModelAndView myLogin() 
	 {
		return new ModelAndView("mylogin");  
	 }
	@RequestMapping("/manageuser")
	 public ModelAndView mu() 
	 {
		return new ModelAndView("manageuser");
		}
	@RequestMapping(value={"/manageproduct","/edit/manageproduct"})
	 public ModelAndView mp() 
	 {
		return new ModelAndView("manageproduct");  
	 }

	@RequestMapping("/adminhome")
	 public ModelAndView adminLogin() 
	 {
		return new ModelAndView("adminHome");  
	 }
	@RequestMapping("/edit/adminhome")
	 public ModelAndView editadminLogin() 
	 {
		return new ModelAndView("adminHome");  
	 }
	@RequestMapping("/products")
	public ModelAndView products()
	{
		return new ModelAndView("product1");
	}
	@RequestMapping("/product")
	public ModelAndView productsdb()
	{
		List<Product> data=p1.getProList();
		Gson gson=new Gson();
		String json=gson.toJson(data);
		return new ModelAndView("productsdb","data",gson.toJson(data));
	}	
	/*@RequestMapping("/product")
	 public ModelAndView allcat() 
	{
		System.out.println("In product^^^^^^^^");
		System.out.println("In product^^^^^^^^2222");
		List<Product> arr=p1.getProList();
		//System.out.println(arr);
		//Gson gson=new Gson();
		//String json=gson.toJson(arr);
		//return new ModelAndView("product","data",gson.toJson(arr));//for json
		return new ModelAndView("product","data",arr);
	}*/
	@RequestMapping("/viewcustomers")
	 public ModelAndView allcust() 
	{
		System.out.println("In product^^^^^^^^");
		System.out.println("In product^^^^^^^^2222");
		List<Customer> arr=c1.viewcustomers();
		//System.out.println(arr);
		//Gson gson=new Gson();
		//String json=gson.toJson(arr);
		//return new ModelAndView("product","data",gson.toJson(arr));//for json
		return new ModelAndView("viewcustomers","data",arr);
	}
	
	@RequestMapping("/product1/{pid}")
	 public ModelAndView allcat1(@PathVariable("pid")int pid) 
		{
		p1.remove(pid);
		System.out.println("In product^^^^^^^^");
		System.out.println("In product^^^^^^^^2222");
		return new ModelAndView("redirect:/product");
		}
		@RequestMapping("/updateprod")
	public ModelAndView update(@ModelAttribute("furnish")Product p) 
	 {
		p1.update(p);
		return new ModelAndView("redirect:/product");  
	 }	
	int a;
	@RequestMapping("/edit/{pid}")
	public ModelAndView edit(@PathVariable("pid")int pid,HttpServletRequest req) 
	 {
		System.out.println("in controller1");
		a=pid;
		System.out.println("in controller2");
		Product p=new Product();			
		System.out.println("in controller3");
		Session s=sf.openSession();
		Product p1=(Product)s.get(Product.class,a);
		System.out.println("haiiiiii");
		System.out.println("p1.getPname()"+p1.getPname());
		ModelAndView m1 = new ModelAndView("updatepage");HttpSession sess=req.getSession();
		sess.setAttribute("data1",p1);
		m1.addObject("command", p1);
		System.out.println(p1.getPname());
		m1.addObject("data", p1);		 
		return m1;
		}
		@RequestMapping("/userhome")
	public ModelAndView userhome(@RequestParam("userid") int uid,@RequestParam("pwd")String pwd) 
	 {
			ModelAndView m= new ModelAndView();
			String pwddb;
			int uiddb;
			System.out.println(uid +" "+ pwd);
			//int uid1=Integer.parseInt(uid);
			Session s=sf.openSession();
			Transaction t=s.beginTransaction();
			Customer c=new Customer();
			System.out.println("customer created");
			Query q=s.createQuery("from Customer");
			List<Customer> res=q.list();
			System.out.println("hjjjjjjjjjjj ");
			/*Iterator itr=res.iterator();
			System.out.println("hjjjjjjjjjj11111111111j ");
			while(itr.hasNext()){
				System.out.println("hjjjjjjjjjjj in while");
				 uiddb=c.getUserid();
				 pwddb=c.getPwd();
				if((uiddb==uid)&&(pwddb.equals(pwd)))			
				 m= new ModelAndView("userhome");		
			     else			
		            m=new ModelAndView("userlogin","command",new Customer()).addObject("message", "Login Failed, Try again.");
			}*/
			for(Customer c1:res){
				uiddb=c1.getUserid();
				 pwddb=c1.getPwd();
				 System.out.println(uiddb+" "+pwddb);
				if((uiddb==uid)&&(pwddb.equals(pwd)))	{
		         System.out.println("in if");
				 m= new ModelAndView("userhome").addObject("name",c1.getName());	
				 break;
				}
			     else			
		            m=new ModelAndView("userlogin","command",new Customer()).addObject("message", "Login Failed, Try again.");
			}	
				
			
					return m;	 
	 }
		@RequestMapping("/edit")
		public ModelAndView edit() 
		 {
			return new ModelAndView("updatepage","command",new Product());  
		 }	
		@RequestMapping("/contact")
	public ModelAndView guitar() 
	 {
		return new ModelAndView("contact");  
	 }	
	@RequestMapping("/signup")
	 public ModelAndView signup() 
	 {
		return new ModelAndView("signup","command", new Customer());  
	 }	
	@RequestMapping("/aboutus")
	 public ModelAndView aboutus() 
	 {
		return new ModelAndView("aboutus");  
	 }
	int b; 
	@RequestMapping("/buynow/{pid}")
	 public String buynow(HttpServletRequest req,@PathVariable("pid")int pid) 
	 {
		System.out.println("BuyNow");
		b=pid;
		System.out.println("Inside buynow");
		//Product p=new Product();
		Session s=sf.openSession();
		//System.out.println("Inside buynow1");
		Product p1=(Product)s.get(Product.class,b);
		//return new ModelAndView("buynow");
		System.out.println("Inside buynow");
		//ModelAndView m1 = new ModelAndView("buynow");
		HttpSession sess=req.getSession();
		System.out.println("Inside buynow1");
		sess.setAttribute("data1",p1);
		sess.setAttribute("pid",pid);
		String pname=p1.getPname();
		double price=p1.getPcost();
		System.out.println(pname+" "+price);
		sess.setAttribute("pname", pname);
		sess.setAttribute("price",price);
		//return m1;
		return "buynow";
	 }
	@RequestMapping("/buynow/pay")
	public ModelAndView payment(HttpServletRequest req) 
	 {
		HttpSession s=req.getSession();
		Product p=(Product)s.getAttribute("data1");
        System.out.println(p.getPcost());
		//String pname=(String)s.getAttribute("pname");
		//double price=(Double)s.getAttribute("price");
		//String spid=(String)s.getAttribute("pid");
		//int pid=Integer.parseInt(spid);
        int pid=p.getPid();
        String pname=p.getPname();
        double price=p.getPcost();
		Order o=new Order();
		o.setPid(pid);
		o.setPname(pname);
		o.setPrice(price);
		orderDAO.insert(o);
		return new ModelAndView("ordersummary");
		//return "ordersummary";
	 }	
	@RequestMapping("/buynow/tq")
	public ModelAndView tq() 
	 {
		return new ModelAndView("tq");  
	 }
	@RequestMapping("/buynow/logout")
	public ModelAndView buynow() 
	 {
		return new ModelAndView("logout");  
	 }	
	@RequestMapping("/quick")
	 public ModelAndView quick() 
	 {
		return new ModelAndView("quick");  
	 }
	@RequestMapping("/logout")
	 public ModelAndView logout() 
	 {
		return new ModelAndView("logout");  
	 }	
	@RequestMapping("/delete/{id}")
	 public ModelAndView delete(@PathVariable("id")int id) 
	 {
		p1.remove(id);
		return new ModelAndView("redirect:/product");  
	 }
	@RequestMapping("/deletec/{id}")
	 public ModelAndView deletec(@PathVariable("id")int id) 
	 {
		c1.delete(id);
		return new ModelAndView("redirect:/viewcustomers");  
	 }	
	@RequestMapping("/pinfo")
	 public ModelAndView pinfo(@RequestParam("pname")String pname,@RequestParam("pcost")Double pcost) 
	 {
		System.out.println(pname+"  "+pcost);
		ModelAndView m1= new ModelAndView("pinfo");
		m1.addObject("pname",pname);
		m1.addObject("pcost",pcost);
		return m1;
	 }
	}//End of controller
