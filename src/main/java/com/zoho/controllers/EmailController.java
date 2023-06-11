package com.zoho.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.util.EmailService;

@Controller
public class EmailController {
	
	@Autowired
	private EmailService emailservice;
	
	//http://localhost:8080/composeEmail
	
	@RequestMapping(value="/composeEmail",method=RequestMethod.POST)
public String composeEmail(@RequestParam("email")String email, Model model) {
		model.addAttribute("email", email);
	return "compose_email";
	
}
	//http://localhost:8080/sendEmail
	
	@RequestMapping("/sendEmail")
	public String sendEmail (@RequestParam("to")String to, @RequestParam("sub")String sub, @RequestParam("msg")String msg,Model model) {
		emailservice.sendemail(to, sub, msg);
		model.addAttribute("msg", "Email is sent");
		return "compose_email";
	
	
	}
}
