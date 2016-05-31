package com.musichub.controller;


import com.musichub.model.Product;
import com.musichub.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;
    
    @Autowired
	private JavaMailSender mailSender;

    @RequestMapping("/productList/all")
    public String getProducts(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException{
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);

        return "viewProduct";
    }

    @RequestMapping("/productList")
    public String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);
        model.addAttribute("searchCondition", searchCondition);

        return "productList";
    }
    @RequestMapping("/favorite/{productId}")
    public String viewSendMailPage(@PathVariable int productId, Model model) throws IOException{
    	Product product = productService.getProductById(productId);
        model.addAttribute("product", product);

        return "sendMail";
    }
    @RequestMapping(value="/sendMail", method=RequestMethod.POST)
    public String sendMail(HttpServletRequest request)
    {
    	try
		{
		String recipientAddress = request.getParameter("recipient");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		// prints debug info
		System.out.println("To: " + recipientAddress);
		System.out.println("Subject: " + subject);
		System.out.println("Message: " + message);
		
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(recipientAddress);
		email.setSubject(subject);
		email.setText(message);
		
		// sends the e-mail
		mailSender.send(email);
		
		
		}
		catch(Exception ex)
		{
			System.out.println("Exception = "+ex);
		}
		return "Success";
    }

} 
