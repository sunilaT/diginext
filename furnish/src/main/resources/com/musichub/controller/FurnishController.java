package com.musichub.controller;

import java.util.ArrayList;
import com.google.gson.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;

import com.musichub.dao.ProductDAOC;
import com.musichub.dao.ProductDAOInt;
import com.musichub.model.Product;  

@Controller
public class MyController
{
	@RequestMapping("/")  
	 public ModelAndView Home() 
	 {
		return new ModelAndView("index");  
	 }

	
	@RequestMapping("/login")
	 public ModelAndView Login() 
	 {
		return new ModelAndView("login");  
	 }
	@RequestMapping("/product")
	 public ModelAndView allcat() 
	 {
		
		ProductDAOInt plist=new ProductDAOC();
		ArrayList<Product> arr=plist.getProList();
		Gson gson=new Gson();
		
		//String json=gson.toJson(arr);
		return new ModelAndView("product","data",gson.toJson(arr)); 

	 }
	@RequestMapping("/flute")
	public ModelAndView flute() 
	 {
		return new ModelAndView("flute");  
	 }
	@RequestMapping("/trumpet")
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
	 }
	@RequestMapping("/guitar")
	public ModelAndView guitar() 
	 {
		return new ModelAndView("guitar");  
	 }
	@RequestMapping("/signup")
	 public ModelAndView signup() 
	 {
		return new ModelAndView("signup");  
	 }
	@RequestMapping("/aboutus")
	 public ModelAndView aboutus() 
	 {
		return new ModelAndView("aboutus");  
	 }
	}
