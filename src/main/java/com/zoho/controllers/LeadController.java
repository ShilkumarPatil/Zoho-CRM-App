package com.zoho.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zoho.entitties.Billing;
import com.zoho.entitties.Contact;
import com.zoho.entitties.Lead;
import com.zoho.services.BillingService;
import com.zoho.services.ContactService;
import com.zoho.services.LeadService;


@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadservice;
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private BillingService billingService;
	
	//http://localhost:8080/createLead
	
	@RequestMapping(value="/createLead",method=RequestMethod.GET)
	public String viewCreateLeadForm() {
		return "create_lead";
		
	}
	
	//http://localhost:8080/savelead
	
	@RequestMapping(value="/savelead",method=RequestMethod.POST)
	public String saveLead(@ModelAttribute("lead") Lead lead , Model model) {
		leadservice.saveOneLead(lead);
		model.addAttribute("lead",lead);
		return "lead_info";
	
}
	//http://localhost:8080/convertlead
	
	@RequestMapping(value="/convertlead",method=RequestMethod.POST)
	public String convertLead(@RequestParam ("id") long id, Model model) {
		Lead lead = leadservice.getLeadById(id);
		Contact contact=new Contact();
			   contact.setFirstName(lead.getFirstName());
			   contact.setLastName(lead.getLastName());
			   contact.setEmail(lead.getEmail());
			   contact.setMobile(lead.getMobile());
			   contact.setSource(lead.getSource());
			   
               contactService.saveContact(contact);
     
		       leadservice.deleteLeadById(id);
		       
		       List<Contact> contacts = contactService.getAllContacts();
		       model.addAttribute("contacts", contacts);
		
		return"List_Contacts";
	}
	
	//http://localhost:8080/listleads
	
	@RequestMapping("/listleads")
	public String listLeads(Model model) {
		List<Lead> leads = leadservice.getAllLeads();
		model.addAttribute("leads" ,leads);
		return "List_Leads";	
	}
	
	//http://localhost:8080/LeadInfo
	
	@RequestMapping("/LeadInfo")
	public String LeadInfo(@RequestParam("id")long id, Model model) {
		Lead lead = leadservice.getLeadById(id);
		model.addAttribute("lead", lead);
		return "lead_info";
		
	}
	
	//http://localhost:8080/createBill
	
	@RequestMapping("/createBill")
	public String createBill(@RequestParam("id")long id , Model model) {
		Contact contact = contactService.getContactById(id);
		model.addAttribute("contact", contact);
		return "generate_bill";
	}
	
	//http://localhost:8080/saveBill
	
	@RequestMapping("/saveBill")
	public String saveBill (Billing bill,Model model) {
		 billingService.generateBill(bill);
		 List<Billing>billings = billingService.getAllBills();
		 model.addAttribute("billing", billings);
		return "list_Bills";
	
	}
	
	//http://localhost:8080/listbills
	
	@RequestMapping("/listbills")
     public String listbills(Model model) {
		List<Billing> billings = billingService.getAllBills();
		model.addAttribute("billing", billings);
		return "list_Bills";
    	 
     }
	
	}

