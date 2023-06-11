package com.zoho.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zoho.entitties.Contact;
import com.zoho.repositories.ContactRepository;
@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
private	ContactRepository contactrepo;
	
	@Override
	public void saveContact(Contact contact) {
		contactrepo.save(contact);
	}

	@Override
	public List<Contact> getAllContacts() {
		List<Contact> contacts = contactrepo.findAll();
		return contacts;
	}

	@Override
	public Contact getContactById(long id) {
    Optional<Contact> findById = contactrepo.findById(id);		
      Contact contact = findById.get();
     return contact;
	
	}

}
