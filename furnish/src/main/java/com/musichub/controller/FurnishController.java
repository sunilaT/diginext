package com.musichub.controller;
import java.util.List;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.*;

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
	
	@RequestMapping("/")  
	 public ModelAndView Home() 
	 {
		return new ModelAndView("index");  
	 }
	
	@RequestMapping("/prod")  
	 public ModelAndView prod() 
	 {
		System.out.println("test--------------->");
		return new ModelAndView("prod","command",new Product());
	
	 }
	
	@RequestMapping("/reg")  
	 public ModelAndView regcust(@ModelAttribute("customer") Customer c, BindingResult res) 
	 {
		try{
		c1.insert(c);
		}
		catch(Exception e)
		{
			
		}
		System.out.println("customer--------------->");
		/*ModelAndView m=new ModelAndView("signup");
		if(res.hasErrors()){
			m.addObject("command",new Customer());
			return m;
		}else{
			return m;
		}*/
		return new ModelAndView("userhome","command",new Customer());
	 }
	
	@RequestMapping("/addprod")  
	 public ModelAndView addprod(@ModelAttribute("furnish")Product pf,ModelMap model) 
	 {
		
		p1.insert(pf);
		return new ModelAndView("prod","command",new Product());  
	 }

	@RequestMapping("/mylogin")
	 public ModelAndView Login() 
	 {
		return new ModelAndView("mylogin");  
	 }
	@RequestMapping("/manageuser")
	 public ModelAndView mu() 
	 {
		return new ModelAndView("manageuser");
		}
	@RequestMapping("/manageproduct")
	 public ModelAndView mp() 
	 {
		return new ModelAndView("manageproduct");  
	 }

	@RequestMapping("/adminhome")
	 public ModelAndView adminLogin() 
	 {
		return new ModelAndView("adminHome");  
	 }

	
	@RequestMapping("/product")
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
	}
	
	@RequestMapping("/product1/{pid}")
	 public ModelAndView allcat1(@PathVariable("pid")int pid) 
		{
		p1.remove(pid);
		System.out.println("In product^^^^^^^^");
		System.out.println("In product^^^^^^^^2222");
		return new ModelAndView("redirect:/product");
		/*List<Product> arr=p1.getProList();
		System.out.println(arr);
		Gson gson=new Gson();
		String json=gson.toJson(arr);
		//return new ModelAndView("product","data",gson.toJson(arr));//for json
		return new ModelAndView("product","data",json);
		 */
		}

	@RequestMapping("/updateprod")
	public ModelAndView update(@ModelAttribute("furnish")Product p) 
	 {
		p1.update(p);
		return new ModelAndView("edited");  
	 }
	
	int a;
	@RequestMapping("/edit/{pid}")
	public ModelAndView edit(HttpServletRequest req,@PathVariable("pid")int pid) 
	 {
		System.out.println("in controller1");
		
		a=pid;
		System.out.println("in controller2");
		Product p=new Product();			
		System.out.println("in controller3");
		Session s=sf.openSession();
		Product p1=(Product)s.get(Product.class,a);
		System.out.println("p1.getPname()"+p1.getPname());
		/*Map<String,Product>m = new HashMap<String,Product>();
		m.put("data", p1);*/
		ModelAndView m1 = new ModelAndView("updatepage");HttpSession sess=req.getSession();
		sess.setAttribute("data1",p1);
		m1.addObject("command", p1);
		System.out.println(p1.getPname());
		m1.addObject("data", p1);
		
		//ModelAndView m=new 
		return m1;
				//m.addObject("data",p1);
				//return m;
	 }
	
	/*@RequestMapping("/product")
	public ModelAndView allcat() 
	 {
		return new ModelAndView("product");  
	 }*/
	
	/*@RequestMapping("/trumpet")
	public ModelAndView trumpet() 
	 {
		return new ModelAndView("trumpet");  
	 }
	
	@RequestMapping("/violin")
	public ModelAndView violin() 
	 {
		return new ModelAndView("violin");  
	 }
	
	@RequestMapping("/tabla")
	public ModelAndView tabla() 
	 {
		return new ModelAndView("tabla");  
	 }*/
	
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
	
	@RequestMapping("/quick")
	 public ModelAndView quick() 
	 {
		return new ModelAndView("quick");  
	 }
	
	@RequestMapping("/delete/{id}")
	 public ModelAndView delete(@PathVariable("id")int id) 
	 {
		p1.remove(id);
		return new ModelAndView("product");  
	 }
	
	@RequestMapping("/pinfo")
	 public ModelAndView pinfo() 
	 {
		return new ModelAndView("pinfo");  
	 }
	}//End of controller
