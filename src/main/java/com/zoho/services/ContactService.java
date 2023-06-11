package com.zoho.services;

import java.util.List;

import com.zoho.entitties.Contact;

public interface ContactService {
public void saveContact(Contact contact);

public List<Contact> getAllContacts();

public Contact getContactById(long id);
}
