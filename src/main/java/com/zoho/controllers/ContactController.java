
package com.zoho.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zoho.entitties.Contact;
import com.zoho.services.ContactService;

@Controller
public class ContactController {
	
	@Autowired
	private ContactService contactService;
	
	//http://localhost:8080/listcontact
	
	@RequestMapping("/listcontact")
	public String listContacts(Model model) {
		List<Contact> contacts = contactService.getAllContacts();
		model.addAttribute("contacts" ,contacts);
		return "List_Contacts";	
	}

}
